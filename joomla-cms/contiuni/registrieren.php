<?php
	$db = mysqli_connect ('IPWEB', 'joomla3', 'g19_m!!KZ5a', 'joomla3');

	if (!$db )
	{
		echo "<br>" . 'Verbindung fehlgeschlagen';
	}
?>

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

<div class="registrieren">
	<h2 style="text-align:center; color:#F69F2B">Registrieren</h2>
<form action="registrieren.php" method="POST">
	<div>
		<div>
			<label id="email-lbl">E-Mail Adresse *</label>						
		</div>
		<div>
			<input type="email" required size="60" id="registrierenemail" name="registrierenemail" placeholder="maxi09@hotmail.com" value=" ">
		</div>
	</div>
	<div>
		<div>
			<label id="passwort-lbl">Passwort *</label>						
		</div>
		<div>
			<input type="password" required size="60" id="registrierenpasswort" name="registrierenpasswort" placeholder="maxi09" value="">
		</div>
	</div>
	<div>
		<div>
			<label id="passwort2-lbl">Passwort wiederholen *</label>
		</div>
		<div>
			<input type="password" required size="60" id="registrierenpasswort2" name="registrierenpasswort2" placeholder="maxi09" value="">						
		</div>
	</div>
	<div>
		<div>
			<label id="klasse-lbl">Klasse auswählen *</label>
		</div>
		<div>
			<select size="1" name="klasse">
				<?php
					$sql = "select klassenname from joem2_contiuni_klasse;";
					$result = $db->query($sql);
					while($row = mysqli_fetch_array($result))
					{
					?>
						<option><?php echo $row["klassenname"]?></option>
					<?php
					}
				?>
			</select>
		</div>
	</div>
	<br>
	<button name="registrieren" type="submit">Registrieren</button>
</form>
	<a href="/contiuni/index.php" style="color:#F69F2B; text-decoration:none;">Zurück zur Anmeldung</a>
	
	<?php
	if(isset($_POST['registrieren']))
	{

		$passwort = $_POST['registrierenpasswort'];
		$passwort2 = $_POST['registrierenpasswort2'];
		$email = $_POST['registrierenemail'];
		$klasse = $_POST['klasse'];
		
		if(!($passwort == $passwort2))
		{
			echo "<br>" . 'Sie haben zwei unterschiedliche Passwörter eingegeben!';
		}
		else
		{
			$sql = "select email from joem2_contiuni_person where email =\"". $email . "\";";
			$result = $db->query($sql);
			if(!$result)
			{
				echo "<br>" . 'Email Adresse existiert nicht!';
			}
			else
			{	
				if(!($row = mysqli_fetch_array($result))) 
				{
					echo "<br>" . 'Email Adresse existiert nicht!';
				}
				else
				{				
					$sqlperson = "update joem2_contiuni_person set password = '$passwort' where email =\"". $email . "\";";
					$db->query($sqlperson);
					
					$sqlklasse = "select klassenid from joem2_contiuni_klasse where klassenname =\"". $klasse . "\";";
					$result = $db->query($sqlklasse);
					$row = mysqli_fetch_array($result);
					$klassenid = $row["klassenid"];
					
					$sqlpersonenid = "select personenid from joem2_contiuni_person where email =\"". $email . "\";";
					$result = $db->query($sqlpersonenid);
					$row = mysqli_fetch_array($result);
					$personenid = $row["personenid"];
			
					$sqlschueler = "insert into joem2_contiuni_schueler (personenid, klassenid) values('$personenid','$klassenid');";
					$db->query($sqlschueler);
					
				}
			}
		}
		
		$db->close();
	}		
	?>
	
</div>
