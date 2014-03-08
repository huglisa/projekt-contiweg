<?php
	$db = mysqli_connect ('IPWEB', 'joomla3', 'g19_m!!KZ5a', 'joomla3');

	if (!$db )
	{
	?>
		<script>alert('Verbindung fehlgeschlagen!')</script>
	<?php
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


<script type="text/javascript">
function toggle(control){
	var elem = document.getElementById(control);
	
	if(elem.style.display == "none"){
		elem.style.display = "block";
	}else{
		elem.style.display = "none";
	}
}

function kursleiterchange(sel)
{
	//Email Adresse von option value
	var email = sel.options[sel.selectedIndex].value; 

	//Email in das email feld schreiben
	var elememail = document.getElementById("kursleiteremail");
	elememail.value = email;
	
	//Vor und Nachname von option holen und splitten
	var vornach = sel.options[sel.selectedIndex].text; 
	var splitted = vornach.split(" ");
	var vorname = splitted[0];
	var nachname = splitted[1];
	
	//Variablen in die Felder schreiben
	var elemvorname = document.getElementById('kursleitervorname');
	elemvorname.value = vorname;
	
	var elemnachname = document.getElementById('kursleiternachname');
	elemnachname.value = nachname;
}

function administratorenchange(sel)
{
	//Email Adresse von option value
	var email = sel.options[sel.selectedIndex].value; 

	//Email in das email feld schreiben
	var elememail = document.getElementById("administratoremail");
	elememail.value = email;
	
	//Vor und Nachname von option holen und splitten
	var vornach = sel.options[sel.selectedIndex].text; 
	var splitted = vornach.split(" ");
	var vorname = splitted[0];
	var nachname = splitted[1];
	
	//Variablen in die Felder schreiben
	var elemvorname = document.getElementById('administratorvorname');
	elemvorname.value = vorname;
	
	var elemnachname = document.getElementById('administratornachname');
	elemnachname.value = nachname;
}
</script>

<div class="administratorenbereich">
	<h2 style="text-align:center; color:#F69F2B">Administratorenbereich</h2>

	<a href="javascript:toggle('personenverwalten')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Administratoren und Kursleiter verwalten</a>
	<br>
	<div id="personenverwalten" style="display: block">

	<form action="administratorenbereich.php" method="POST">
		<fieldset name="kursleiter">
			<legend>Kursleiter</legend>
			<table style="margin:auto;">
			<tr>
			<td style="width: 50%">
			<select name="kursleiterliste" id="kursleiterliste" size="4" onchange="kursleiterchange(this)">
			<?php
				$sqlkursleiter = "select concat(vorname, ' ', nachname), email, password from joem2_contiuni_person, joem2_contiuni_kursleiter where joem2_contiuni_person.personenid = joem2_contiuni_kursleiter.personenid;";
				$resultkursleiter = $db->query($sqlkursleiter);
				while($row = mysqli_fetch_array($resultkursleiter))
				{
					?>
						<option value="<?php echo $row["email"]?>"><?php echo $row["concat(vorname, ' ', nachname)"]?></option>
					<?php
				}
			?>
			</select>
			<br>
			<br>
			<button name="kursleiterhinzufuegen">Kursleiter hinzufügen</button><br><br>
			<button name="kursleiterbearbeiten">Kursleiter bearbeiten</button><br><br>
			<button name="kursleiterloeschen">Kursleiter löschen</button>
			</td>
			<td style="width; 50%">			
			
			<div name="divkursleiter" id="divkursleiter">
				<div>
					<label id="kursleitervorname-lbl">Vorname *</label>						
				</div>
				<div>
					<input type="text" required size="60" id="kursleitervorname" name="kursleitervorname" value="">
				</div>
				<div>
					<label id="kursleiternachname-lbl">Nachname *</label>						
				</div>
				<div>
					<input type="text" required size="60" id="kursleiternachname" name="kursleiternachname" value="">
				</div>
				<div>
					<label id="kursleiteremail-lbl">E-Mail Adresse *</label>						
				</div>
				<div>
					<input type="email" required size="60" id="kursleiteremail" name="kursleiteremail" value="">
				</div>
				<div>
					<label id="kursleiterpasswort-lbl">Passwort</label>						
				</div>
				<div>
					<input type="password" size="60" id="kursleiterpasswort" name="kursleiterpasswort" value="">
				</div>
				<div>
					<label id="kursleiterpasswort2-lbl">Passwort wiederholen</label>						
				</div>
				<div>
					<input type="password" size="60" id="kursleiterpasswort2" name="kursleiterpasswort2" value="">
				</div>
			</div>
			</td>
			</tr>
			</table>
			
		</fieldset>
	</form>
	
	<form action="administratorenbereich.php" method="POST">
		<fieldset name="administratoren">
			<legend>Administratoren</legend>
			<table style="margin:auto;">
			<tr>
			<td style="width: 50%">
			<select name="administratorenliste" id="administratorenliste" size="4" onchange="administratorenchange(this)">
			<?php
				$sqladministratoren = "select concat(vorname, ' ', nachname), email, password from joem2_contiuni_person, joem2_contiuni_administrator where joem2_contiuni_person.personenid = joem2_contiuni_administrator.personenid;";
				$resultadministratoren = $db->query($sqladministratoren);
				while($row = mysqli_fetch_array($resultadministratoren))
				{
					?>
						<option value="<?php echo $row["email"]?>"><?php echo $row["concat(vorname, ' ', nachname)"]?></option>
					<?php
				}
			?>
			</select>
			<br>
			<br>
			<button name="administratorhinzufuegen">Administrator hinzufügen</button><br><br>
			<button name="administratorbearbeiten">Administrator bearbeiten</button><br><br>
			<button name="administratorloeschen">Administrator löschen</button>
			</td>
			<td style="width; 50%">			
			
			<div name="divadministrator" id="divadministrator">
				<div>
					<label id="administratorvorname-lbl">Vorname *</label>						
				</div>
				<div>
					<input type="text" required size="60" id="administratorvorname" name="administratorvorname" value="">
				</div>
				<div>
					<label id="administratornachname-lbl">Nachname *</label>						
				</div>
				<div>
					<input type="text" required size="60" id="administratornachname" name="administratornachname" value="">
				</div>
				<div>
					<label id="administratoremail-lbl">E-Mail Adresse *</label>						
				</div>
				<div>
					<input type="email" required size="60" id="administratoremail" name="administratoremail" value="">
				</div>
				<div>
					<label id="administratorpasswort-lbl">Passwort</label>						
				</div>
				<div>
					<input type="password" size="60" id="administratorpasswort" name="administratorpasswort" value="">
				</div>
				<div>
					<label id="administratorpasswort2-lbl">Passwort wiederholen</label>						
				</div>
				<div>
					<input type="password" size="60" id="administratorpasswort2" name="administratorpasswort2" value="">
				</div>
			</div>
			</td>
			</tr>
			</table>
		</fieldset>
	</form>
	</div>
	<br>
	<a href="javascript:toggle('schuelerverwalten')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Klassen und Schüler erstellen</a>
	<br>
	<div id="schuelerverwalten" style="display: none">
		<fieldset name="schueler">
			<legend>Klassen und Schüler</legend>
			
			<button>Klassen erstellen</button>
			<button>Schüler erstellen</button>
		</fieldset>
	
	</div>
	<br>

	<a href="javascript:toggle('kurseverwalten')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Kurse verwalten</a>
	<br>
	<div id="kurseverwalten" style="display: none">
		<fieldset name="kurse">
			<legend>Kurse</legend>
			<select name="kursliste" size="4">
				<option>Kurs1</option>
				<option>Kurs2</option>
				<option>kurs3 mit ganz langen Namen</option>
			</select>
			<br>
			<br>
			<button>Kurs hinzufügen</button>
			<button>Kurs bearbeiten</button>
			<button>Kurs löschen</button>
			
		</fieldset>
	</div>

	<br>

	<a href="javascript:toggle('schuelerlisten')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Schülerlisten</a>
	<br>
	<div id="schuelerlisten" style="display: none">
	
		<a href="javascript:toggle('nichtregistrierteschueler')" style="text-decoration:none;  color:black;">Alle noch nicht registrierten Schüler</a>
		<br>
				
		<fieldset id="nichtregistrierteschueler" style="display: none">
			<table border="1">
				<tr>
					<th>Vorname</th>
					<th>Nachname</th>
					<th>Klasse</th>
				</tr>
				<tr>
					
				</tr>
			</table>
			<br>
			<a>Liste drucken</a>
		</fieldset>
		
		<a href="javascript:toggle('schuelerprokurs')" style="text-decoration:none;  color:black;">Alle Schüler pro Kurs</a>
		<br>
		<fieldset id="schuelerprokurs" style="display: none">
			<span>Kurs auswählen</span>
			<br>
			<select name="schuelerprokursliste" size="4">
				<option>Kurs1</option>
				<option>Kurs2</option>
				<option>kurs3 mit ganz langen Namen</option>
			</select>
			<br>
			<br>
			<table border="1">
				<tr>
					<th>Vorname</th>
					<th>Nachname</th>
					<th>Klasse</th>
				</tr>
				<tr>
				
				</tr>
			</table>
			<br>
			<a>Liste drucken</a>
		</fieldset>
		
		<a href="javascript:toggle('schuelerproklasse')" style="text-decoration:none; color:black;">Alle Schüler einer Klasse</a>
		<br>
		<fieldset id="schuelerproklasse" style="display: none">
			<span>Klasse auswählen:</span>
			<br>
			<select name="schuelerproklasseliste" size="4">
				<option>Klasse1</option>
				<option>Klasse2</option>
				<option>Klasse3</option>
			</select>
			<br>
			<br>
			<table border="1 ">
				<tr>
					<th>Vorname</th>
					<th>Nachname</th>
					<th>Kurs</th>
				</tr>
				<tr>
				
				</tr>
			</table>
			<br>
			<a>Liste drucken</a>
		</fieldset>
		
	</div>

	<br>

	<a href="javascript:toggle('endeContiUNI')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Am Ende der ContiUNI</a>
	<br>
	<div id="endeContiUNI" style="display: none">
		<br>
		<button>alle Kursleiter löschen</button>
		<button>alle Klassen löschen</button>
		<button>alle Schülerdaten löschen</button>
		<button>alle Kurse löschen</button>
	</div>

</div>

<?php
	//Kursleiter hinzufügen Button
	if(isset($_POST['kursleiterhinzufuegen']))
	{
		$vorname = $_POST['kursleitervorname'];
		$nachname = $_POST['kursleiternachname'];
		$email = $_POST['kursleiteremail'];
		$passwort = $_POST['kursleiterpasswort'];
		$passwort2 = $_POST['kursleiterpasswort2'];
		
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
			
				if(($row = mysqli_fetch_array($result))) 
				{
				?>
					<script>alert('Email Adresse existiert bereits!')</script>
				<?php
				}
				else
				{
		
					$sqlperson = "insert into joem2_contiuni_person (vorname, nachname, email, password) values('$vorname','$nachname', '$email', '$passwort');";
					$db->query($sqlperson);
			
					$sqlpersonenid = "select personenid from joem2_contiuni_person where email =\"". $email . "\";";
					$result = $db->query($sqlpersonenid);
					$row = mysqli_fetch_array($result);
					$personenid = $row["personenid"];
			
					$sqlkursleiter = "insert into joem2_contiuni_kursleiter (personenid, iskursleiter) values('$personenid', 1);";
					$db->query($sqlkursleiter);
					
					?>
					<script>
						alert('Kursleiter wurde erfolgreich hinzugefügt!');
						window.location = "/contiuni/administratorenbereich.php";
					</script>
					<?php
				}
		}
	}
	
	//Kursleiter löschen Button
	if(isset($_POST['kursleiterloeschen']))
	{
		$kursleiter = $_POST['kursleiterliste'];
		
		$sqlpersonenid = "select personenid from joem2_contiuni_person where email =\"". $kursleiter . "\";";
		$result = $db->query($sqlpersonenid);
		$row = mysqli_fetch_array($result);
		$personenid = $row["personenid"];
		
		$sqldeletekursleiter = "delete from joem2_contiuni_kursleiter where personenid = \"". $personenid . "\";";
		$db->query($sqldeletekursleiter);
		
		$sqldeleteperson = "delete from joem2_contiuni_person where personenid = \"". $personenid . "\";";
		$db->query($sqldeleteperson);
		
		?>
		<script>
			alert('Kursleiter gelöscht!');
			window.location = "/contiuni/administratorenbereich.php";
		</script>
		<?php
	}
	
	//Kursleiter bearbeiten Button
	if(isset($_POST['kursleiterbearbeiten']))
	{
		$kursleiter = $_POST['kursleiterliste'];
		$vorname = $_POST['kursleitervorname'];
		$nachname = $_POST['kursleiternachname'];
		$email = $_POST['kursleiteremail'];
		$passwort = $_POST['kursleiterpasswort'];
		$passwort2 = $_POST['kursleiterpasswort2'];
		
		$sqlpersonenid = "select personenid from joem2_contiuni_person where email =\"". $kursleiter . "\";";
		$result = $db->query($sqlpersonenid);
		$row = mysqli_fetch_array($result);
		$personenid = $row["personenid"];
		
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
			
			if(($row = mysqli_fetch_array($result)) and !($email == $kursleiter)) 
			{
			?>
				<script>alert('Email Adresse existiert bereits!')</script>
			<?php
			}
			else
			{
				if($passwort == null)
				{
					$sqlupdatekursleiter1 = "update joem2_contiuni_person set vorname = \"" .$vorname . "\", nachname =\"" . $nachname . "\", email = \"" . $email . "\" where personenid = \"". $personenid . "\";";
					$db->query($sqlupdatekursleiter1);
					
					?>
						<script>
							alert('Kursleiter bearbeitet!');
							window.location = "/contiuni/administratorenbereich.php";
						</script>
					<?php
				}
				else
				{
					$sqlupdatekursleiter2 = "update joem2_contiuni_person set vorname = \"" .$vorname . "\", nachname =\"" . $nachname . "\", email = \"" . $email . "\", password = \"" . $passwort . "\"  where personenid = \"". $personenid . "\";";
					$db->query($sqlupdatekursleiter2);
					
					?>
						<script>
							alert('Kursleiter bearbeitet!')
							window.location = "/contiuni/administratorenbereich.php";
						</script>
					<?php
				}
				
			}
		}
		
	}
	
	//Administrator hinzufügen Button
	if(isset($_POST['administratorhinzufuegen']))
	{
		$vorname = $_POST['administratorvorname'];
		$nachname = $_POST['administratornachname'];
		$email = $_POST['administratoremail'];
		$passwort = $_POST['administratorpasswort'];
		$passwort2 = $_POST['administratorpasswort2'];
		
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
			
				if(($row = mysqli_fetch_array($result))) 
				{
				?>
					<script>alert('Email Adresse existiert bereits!')</script>
				<?php
				}
				else
				{
		
					$sqlperson = "insert into joem2_contiuni_person (vorname, nachname, email, password) values('$vorname','$nachname', '$email', '$passwort');";
					$db->query($sqlperson);
			
					$sqlpersonenid = "select personenid from joem2_contiuni_person where email =\"". $email . "\";";
					$result = $db->query($sqlpersonenid);
					$row = mysqli_fetch_array($result);
					$personenid = $row["personenid"];
			
					$sqladministrator = "insert into joem2_contiuni_administrator (personenid, isadministrator) values('$personenid', 1);";
					$db->query($sqladministrator);
					
					?>
					<script>
						alert('Administrator wurde erfolgreich hinzugefügt!');
						window.location = "/contiuni/administratorenbereich.php";
					</script>
					<?php
				}
		}
	}
	
	//Administrator löschen Button
	if(isset($_POST['administratorloeschen']))
	{
		$administrator = $_POST['administratorenliste'];
		
		$sqlpersonenid = "select personenid from joem2_contiuni_person where email =\"". $administrator . "\";";
		$result = $db->query($sqlpersonenid);
		$row = mysqli_fetch_array($result);
		$personenid = $row["personenid"];
		
		$sqldeleteadministrator = "delete from joem2_contiuni_administrator where personenid = \"". $personenid . "\";";
		$db->query($sqldeleteadministrator);
		
		$sqldeleteperson = "delete from joem2_contiuni_person where personenid = \"". $personenid . "\";";
		$db->query($sqldeleteperson);
		
		?>
		<script>
			alert('Administrator gelöscht!');
			window.location = "/contiuni/administratorenbereich.php";
		</script>
		<?php
	}
	
	//Administrator bearbeiten Button
	if(isset($_POST['administratorbearbeiten']))
	{
		$administrator = $_POST['administratorenliste'];
		$vorname = $_POST['administratorvorname'];
		$nachname = $_POST['administratornachname'];
		$email = $_POST['administratoremail'];
		$passwort = $_POST['administratorpasswort'];
		$passwort2 = $_POST['administratorpasswort2'];
		
		$sqlpersonenid = "select personenid from joem2_contiuni_person where email =\"". $administrator . "\";";
		$result = $db->query($sqlpersonenid);
		$row = mysqli_fetch_array($result);
		$personenid = $row["personenid"];
		
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
			
			if(($row = mysqli_fetch_array($result)) and !($email == $administrator)) 
			{
			?>
				<script>alert('Email Adresse existiert bereits!')</script>
			<?php
			}
			else
			{
				if($passwort == null)
				{
					$sqlupdateadministrator1 = "update joem2_contiuni_person set vorname = \"" .$vorname . "\", nachname =\"" . $nachname . "\", email = \"" . $email . "\" where personenid = \"". $personenid . "\";";
					$db->query($sqlupdateadministrator1);
					
					?>
						<script>
							alert('Administrator bearbeitet!');
							window.location = "/contiuni/administratorenbereich.php";
						</script>
					<?php
				}
				else
				{
					$sqlupdateadministrator2 = "update joem2_contiuni_person set vorname = \"" .$vorname . "\", nachname =\"" . $nachname . "\", email = \"" . $email . "\", password = \"" . $passwort . "\"  where personenid = \"". $personenid . "\";";
					$db->query($sqlupdateadministrator2);
					
					?>
						<script>
							alert('Administrator bearbeitet!')
							window.location = "/contiuni/administratorenbereich.php";
						</script>
					<?php
				}
				
			}
		}
		
	}
	

?>
<?php

$db->close();
?>