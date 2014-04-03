<?php
//$db = mysqli_connect ('IPWEB', 'joomla3', 'g19_m!!KZ5a', 'joomla3');
$db = mysqli_connect ('localhost', 'root', 'root', 'contiweg');
  if (!$db )
	{
		?>
			<script>alert('Verbindung fehlgeschlagen!')</script>
		<?php
	}
?>


<div class="registrieren">
	<h2 style="text-align:center; color:#F69F2B">Registrieren</h2>
<form action="registrieren.php" method="POST">
	<div>
		<div>
			<label id="email-lbl">Schülernummer *</label>						
		</div>
		<div>
			<input type="text" required size="60" id="registrierenemail" name="registrierenemail" placeholder="56234" value="<?php echo $_POST['registrierenemail']; ?>">
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
		
		if(!($passwort == $passwort2))
		{
			?>
				<script>alert('Sie haben zwei unterschiedliche Passwörter eingegeben!')</script>
			<?php
		}
		else
		{
			$sql = "select email from joem2_contiuni_person where email =\"". $email . "\";";
			$result = $db->query($sql);
			if(!$result)
			{
				?>
					<script>alert('Schülernummer existiert nicht!')</script>
				<?php
			}
			else
			{	
				if(!($row = mysqli_fetch_array($result))) 
				{
				?>
					<script>alert('Schülernummer existiert nicht!')</script>
				<?php
				}
				else
				{		
					$sqlpassword = "select password from joem2_contiuni_person where email =\"". $email . "\";";
					$resultpassword = $db->query($sqlpassword);
					$rowpassword = mysqli_fetch_array($resultpassword);
					$passwort = sha1($passwort);
					if ($rowpassword['password'] == null)
					{
					
						$sqlperson = "update joem2_contiuni_person set password = '$passwort' where email =\"". $email . "\";";
						$db->query($sqlperson);
			
						?>
							<script>
								alert('Erfolgreich registriert!')
								window.location = "/contiuni/index.php";
							</script>
						<?php
					}
					else
					{
						?>
							<script>
								alert('Passwort wurde bereits gesetzt, bitte wenden Sie sich an einen Administrator!')
								window.location = "/contiuni/index.php?seite=registrieren";
							</script>
						<?php
					}
				}
			}
		}
		
		$db->close();
	}		
	?>
	
</div>
