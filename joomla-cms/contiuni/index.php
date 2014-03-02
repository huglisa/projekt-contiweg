<style>
button
{
	background-image: linear-gradient(to left, #FFFFFF 0%, #F69F2B 100%);
    border: 1px solid #F69F2B;
    border-radius: 5px;
    padding: 5px;
    width: 200px;
}

button:active
{
	background-image: linear-gradient(to right, #FFFFFF 0%, #F69F2B 100%);
}
</style>

<div class="anmelden">
<h1 style="text-align:center; color:#F69F2B">ContiUNI</h1>
<form action="index.php" method="POST">
	<div>
		<div>
			<label id="username-lbl">E-Mail Adresse *</label>						
		</div>
		<div>
			<input type="email" required size="30" id="anmeldeemail" name="anmeldeemail" placeholder="test@hotmail.com" value=" ">
		</div>
	</div>
	<div>
		<div>
			<label id="password-lbl">Passwort *</label>
		</div>
		<div>
			<input type="password" required size="30" id="anmeldepasswort" name="anmeldepasswort" placeholder="passwort" value="">						
		</div>
	</div>		
	<br>
	<button type="submit" name="anmelden" onclick="anmeldenklick()">Anmelden</button>

</form>
	<a href="/contiuni/administratorenbereich.php" style="color:#F69F2B; text-decoration:none;">Administratorenbereich </a>
	<a href="/contiuni/schuelerbereich.php" style="color:#F69F2B; text-decoration:none;">Schülerbereich </a>
	<a href="/contiuni/kursleiterbereich.php" style="color:#F69F2B; text-decoration:none;">Kursleiterbereich</a>
	<br>
	<a href="/contiuni/registrieren.php" style="color:#F69F2B; text-decoration:none;">Registrieren</a>

	<?php
	if(isset($_POST['anmelden']))
	{
	
		$email = $_POST['anmeldeemail'];
		$passwort = $_POST['anmeldepasswort'];
		
		$db = mysqli_connect ('IPWEB', 'joomla3', 'g19_m!!KZ5a', 'joomla3');

		if (!$db )
		{
			echo "<br>" . 'Verbindung fehlgeschlagen';
		}
	
		$sql = "select password from joem2_contiuni_person where email =\"". $email . "\";";
		$result = $db->query($sql);
		if(!$result)
		{
			echo "<br>" . 'Email Adresse existiert nicht!';
		}
		else
		{	
			if($row = mysqli_fetch_array($result)) 
			{
				echo "<br>" . 'Email Adresse richtig!';

				if($row["password"] == $passwort)
				{
					echo "<br>" . 'Passwort richtig!';
					
					$sqlpersonenid = "select personenid from joem2_contiuni_person where email =\"". $email . "\";";
					$result = $db->query($sqlpersonenid);
					$row = mysqli_fetch_array($result);
					$personenid = $row["personenid"];
					echo $personenid;
					
					$sqlschueler = "select personenid from joem2_contiuni_schueler where personenid =\"". $personenid . "\";";
					$resultschueler = $db->query($sqlschueler);
					$rowschueler = mysqli_fetch_array($resultschueler);
					$personenidschueler = $rowschueler["personenid"];
					if($personenidschueler == $personenid)
					{
						echo 'IST SCHÜLER';
						?>
						<script type="text/javascript">
							window.location = "/contiuni/schuelerbereich.php";
						</script>
						<?php
					}
					
					$sqlkursleiter = "select personenid from joem2_contiuni_kursleiter where personenid =\"". $personenid . "\";";
					$resultkursleiter = $db->query($sqlkursleiter);
					$rowkursleiter = mysqli_fetch_array($resultkursleiter);
					$personenidkursleiter = $rowkursleiter["personenid"];
					if($personenidkursleiter == $personenid)
					{
						echo 'IST Kursleiter';
						?>
						<script type="text/javascript">
							window.location = "/contiuni/kursleiterbereich.php";
						</script>
						<?php
					}
					
					$sqladmin = "select personenid from joem2_contiuni_administrator where personenid =\"". $personenid . "\";";
					$resultadmin = $db->query($sqladmin);
					$rowadmin = mysqli_fetch_array($resultadmin);
					$personenidadmin = $rowadmin["personenid"];
					if($personenidadmin == $personenid)
					{
						echo 'IST Admin';
						?>
						<script type="text/javascript">
							window.location = "/contiuni/administratorenbereich.php";
						</script>
						<?php
					}
					
				}
				else
				{
					echo "<br>" . 'Passwort falsch!';
				}				
			}
			else
			{
				echo "<br>" . 'Email Adresse existiert nicht!';
			}
		}
		
		$db->close();
	}		
	?>

</div>