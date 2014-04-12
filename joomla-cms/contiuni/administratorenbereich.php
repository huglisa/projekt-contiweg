<?php
if ($_SESSION['benutzerangemeldet'] == 'true'){

$db = mysqli_connect ('localhost', 'phpmyadmin', 'St20v7_1', 'phpmyadmin');
	if (!$db )
	{
	?>
		<script>alert('Verbindung fehlgeschlagen!')</script>
	<?php
	}
?>


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

function kurschange(sel)
{
	var kursid = sel.options[sel.selectedIndex].value;
	var kursname = sel.options[sel.selectedIndex].text;
	var kursdetails = sel.options[sel.selectedIndex].label;
	var splitted = kursdetails.split(";");
	var kursleiterid = splitted[0];
	var veranstaltungsort = splitted[1];
	var teilnehmeranzahl = splitted[2];
	var anmeldefrist = splitted[3];
	var kursstart = splitted[4];
	var kursende = splitted[5];
	var sonstigeinformationen = splitted[6];
	var klassenbeschraenkung = splitted[7];
	
	var elemkursname = document.getElementById('kursname');
	elemkursname.value = kursname;
	
	var elemveranstaltungsort = document.getElementById('veranstaltungsort');
	elemveranstaltungsort.value = veranstaltungsort;
	
	var elemteilnehmeranzahl = document.getElementById('teilnehmeranzahl');
	elemteilnehmeranzahl.value = teilnehmeranzahl;
	
	var elemanmeldefrist = document.getElementById('anmeldefrist');
	elemanmeldefrist.value = anmeldefrist;
	
	var elemkursstart = document.getElementById('kursstart');
	elemkursstart.value = kursstart;
	
	var elemkursende = document.getElementById('kursende');
	elemkursende.value = kursende;
	
	var elemsonstigeinformationen = document.getElementById('sonstigeinformationen');
	elemsonstigeinformationen.value = sonstigeinformationen;
	
	var elemklassenbeschraenkung = document.getElementById('klassenbeschraenkung');
	elemklassenbeschraenkung.value = klassenbeschraenkung;

	var opt = document.getElementById('kursleiterlistekurs');
	
	
	for (var i = 0; i < opt.length; i++){
		if(opt[i].value == kursleiterid){
			opt[i].setAttribute("selected", "selected");
		}else{
			opt[i].removeAttribute("selected", "selected");
		}
	}
	
}

</script>


<div class="administratorenbereich">
	<h2 style="text-align:center; color:#F69F2B">Administratorenbereich</h2>

	<a href="javascript:toggle('personenverwalten')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Administratoren und Kursleiter verwalten</a>
	<br>
	<div id="personenverwalten" style="display: none">

	<form action="index.php" method="POST">
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
			<td style="width: 50%">			
			
			<div name="divkursleiter" id="divkursleiter">
				<div>
					<label id="kursleitervorname-lbl">Vorname *</label>						
				</div>
				<div>
					<input type="text" required size="60" id="kursleitervorname" name="kursleitervorname" value="<?php echo $_POST['kursleitervorname']; ?>">
				</div>
				<div>
					<label id="kursleiternachname-lbl">Nachname *</label>						
				</div>
				<div>
					<input type="text" required size="60" id="kursleiternachname" name="kursleiternachname" value="<?php echo $_POST['kursleiternachname']; ?>">
				</div>
				<div>
					<label id="kursleiteremail-lbl">E-Mail Adresse *</label>						
				</div>
				<div>
					<input type="email" required size="60" id="kursleiteremail" name="kursleiteremail" value="<?php echo $_POST['kursleiteremail']; ?>">
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
	
	<form action="index.php" method="POST">
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
			<td style="width: 50%">			
			
			<div name="divadministrator" id="divadministrator">
				<div>
					<label id="administratorvorname-lbl">Vorname *</label>						
				</div>
				<div>
					<input type="text" required size="60" id="administratorvorname" name="administratorvorname" value="<?php echo $_POST['administratorvorname']; ?>">
				</div>
				<div>
					<label id="administratornachname-lbl">Nachname *</label>						
				</div>
				<div>
					<input type="text" required size="60" id="administratornachname" name="administratornachname" value="<?php echo $_POST['administratornachname']; ?>">
				</div>
				<div>
					<label id="administratoremail-lbl">E-Mail Adresse *</label>						
				</div>
				<div>
					<input type="email" required size="60" id="administratoremail" name="administratoremail" value="<?php echo $_POST['administratoremail']; ?>">
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
	<form action="index.php" method="POST" enctype="multipart/form-data">
		<fieldset name="schueler">
			<legend>Klassen und Schüler</legend>
			<table style="margin: auto">
				<tr>
					<td width="50%">
					<span>Alle Klassen:</span><br>
						<select size="4" name="klassenliste" id="klassenliste">
							<?php
								$sql = "select klassenname from joem2_contiuni_klasse;";
								$result = $db->query($sql);
								while($row = mysqli_fetch_array($result))
								{
								?>
									<option ><?php echo $row["klassenname"]?></option>
								<?php
								}
							?>
						</select>
					</td>
					<td width="50%">
						<span>Geben Sie eine csv Datei mit den Schülerdaten an.</span></br>
						<input name="uploaded" type="file" /><br />
						<button type="submit"  name="csvsubmit">Schüler erstellen</button>
					</td>
				</tr>
				<tr>
					<td>
						<label name="klassenname-lbl">Neue Klasse</label><br>
						<input name="klassennameinput" type="text" value=""><br><br>
						<button name="klasseerstellen">Klasse erstellen</button>
						
					</td>
					<td>
						<br>
						<label name="passwortreset-lbl">Passwort eines Schülers zurücksetzen</label><br>
						<input name="passwortreset" type="text" value="" placeholder="schülernummer"><br><br>
						<button name="passwortreseten">Passwort zurücksetzen</button>
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
	</div>
	<br>

	<a href="javascript:toggle('kurseverwalten')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Kurse verwalten</a>
	<br>
	<div id="kurseverwalten" style="display: none">
	<form action="index.php" method="POST"> 
		<fieldset name="kurse">
			<legend>Kurse</legend>
			<table style="margin:auto;">
			<tr>
			<td style="width: 50%">
			<select name="kursliste" id="kursliste" size="6" onchange="kurschange(this)">
				<?php
					$sqlkurse = "select concat(kursleiter, ';', veranstaltungsort, ';', teilnehmeranzahl, ';', anmeldefrist, ';', kursbeginn, ';', kursende, ';', sonstigeinformationen, ';', klassenbeschraenkung), kursid, kursname from joem2_contiuni_kurs";
					$resultkurse = $db->query($sqlkurse);
					while($row = mysqli_fetch_array($resultkurse))
					{
						?>
						<option label="<?php echo $row["concat(kursleiter, ';', veranstaltungsort, ';', teilnehmeranzahl, ';', anmeldefrist, ';', kursbeginn, ';', kursende, ';', sonstigeinformationen, ';', klassenbeschraenkung)"]?>" value="<?php echo $row['kursid'];?>"><?php echo $row["kursname"]?></option>
						
						<?php
					}
				?>
			</select>
			<br>
			<br>
			<button name="kurshinzufuegen">Kurs hinzufügen</button><br><br>
			<button name="kursbearbeiten">Kurs bearbeiten</button><br><br>
			<button name="kursloeschen">Kurs löschen</button>
			</td>
			<td style="width:50%">
			<div name="divkurse" id="divkurse">
			<div>
				<label id="kursname-lbl">Kursname *</label>						
			</div>
			<div>
				<input type="text" required size="60" id="kursname" name="kursname" value="<?php echo $_POST['kursname']; ?>">
			</div>
			<div>
				<label id="kursleiter-lbl">Kursleiter *</label>
			</div>
			<div>
				<select name="kursleiterlistekurs" id="kursleiterlistekurs" size="1">
				<?php
				$sqlkursleiter = "select concat(vorname, ' ', nachname), joem2_contiuni_person.personenid from joem2_contiuni_person, joem2_contiuni_kursleiter where joem2_contiuni_person.personenid = joem2_contiuni_kursleiter.personenid;";
				$resultkursleiter = $db->query($sqlkursleiter);
				while($row = mysqli_fetch_array($resultkursleiter))
				{ ?>
					<option value="<?php echo $row['personenid']?>"><?php echo $row["concat(vorname, ' ', nachname)"]?></option>
				<?php
				}
				?>
				</select>
			</div>
			<div>
				<label id="veranstaltungsort-lbl">Veranstaltungsort *</label>						
			</div>
			<div>
				<input type="text" required size="60" id="veranstaltungsort" name="veranstaltungsort" value="<?php echo $_POST['veranstaltungsort']; ?>">
			</div>
			<div>
				<label id="teilnehmer-lbl">Teilnehmeranzahl *</label>						
			</div>
			<div>
				<input type="number" required size="60" id="teilnehmeranzahl" name="teilnehmeranzahl" value="<?php echo $_POST['teilnehmeranzahl']; ?>">
			</div>
			<div>
				<label id="anmeldefrist-lbl">Anmeldefrist * (Form: YYYY-MM-DD)</label>						
			</div>
			<div>
				<input type="date" required size="60" id="anmeldefrist" name="anmeldefrist" value="<?php echo $_POST['anmeldefrist']; ?>">
			</div>
			<div>
				<label id="kursstart-lbl">Kursstart * (Form: YYYY-MM-DD)</label>						
			</div>
			<div>
				<input type="date" required size="60" id="kursstart" name="kursstart" value="<?php echo $_POST['kursstart']; ?>">
			</div>
			<div>
				<label id="kursende-lbl">Kursende * (Form: YYYY-MM-DD)</label>						
			</div>
			<div>
				<input type="date" required size="60" id="kursende" name="kursende" value="<?php echo $_POST['kursende']; ?>">
			</div>
			<div>
				<label id="sonstigeinformationen-lbl">Sonstige Informationen</label>						
			</div>
			<div>
				<input type="text" size="60" id="sonstigeinformationen" name="sonstigeinformationen" value="<?php echo $_POST['sonstigeinformationen']; ?>">
			</div>
			<div>
				<label id="klassenbeschränkung-lbl">Kursbeschränkung (mehrere Beschränkungen mit ; getrennt angeben z.B. w;1A;6.Schulstufe)</label>						
			</div>
			<div>
				<input type="text" size="60" id="klassenbeschraenkung" name="klassenbeschraenkung" value="<?php echo $_POST['klassenbeschraenkung']; ?>">
			</div>
		</div>
			</td>
			</tr>
			</table>
		</fieldset>
	</form>
	</div>

	<br>

	<a href="javascript:toggle('schuelerlisten')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Schülerlisten</a>
	<br>
	<div id="schuelerlisten" style="display: none">
	
		<span>Alle noch nicht registrierten Schüler</span>
		<br>	
		<form action="index.php" method="POST">
			<fieldset id="nichtregistrierteschueler" style="display: block">
				<button name="nichtregistrierteschueler">Schüler anzeigen</button>
			</fieldset>
		</form>
		
		<span>Alle Schüler pro Kurs</span>
		<br>
		<form action="index.php" method="POST">
		<fieldset id="schuelerprokurs" style="display: block">
			<span>Kurs auswählen:</span>
			<br>
			<select name="schuelerkursliste" id="schuelerkursliste" size="4">
				<?php
					$sqlkurse = "select  concat(kursid, ':', kursname), kursname from joem2_contiuni_kurs";
					$resultkurse = $db->query($sqlkurse);
					while($row = mysqli_fetch_array($resultkurse))
					{
						?>
						<option value="<?php echo $row["concat(kursid, ':', kursname)"];?>"><?php echo $row["kursname"]?></option>
						<?php
					}
				?>
			</select>
			<br><br>
			<button name="schuelerkurs">Schüler anzeigen</button>
			<br>
		</fieldset>
		</form>
		
		<span>Alle Schüler einer Klasse mit Kurszuteilung</span>
		<br>
		<form action="index.php" method="POST">
			<fieldset id="schuelerproklasse" style="display: block">
				<span>Klasse auswählen:</span>
				<br>
				<select size="4" name="schuelerklassenliste" id="schuelerklassenliste">
					<?php
						$sql = "select concat(klassenid, ':', klassenname),klassenname from joem2_contiuni_klasse;";
						$result = $db->query($sql);
						while($row = mysqli_fetch_array($result))
						{
							?>
							<option value="<?php echo $row["concat(klassenid, ':', klassenname)"];?>"><?php echo $row["klassenname"]?></option>
							<?php
						}
					?>
				</select>
				<br><br>
				<button name="schuelerklasse">Schüler anzeigen</button>
				<br>
			</fieldset>
		</form>
	</div>

	<br>

	<a href="javascript:toggle('endeContiUNI')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Am Ende der ContiUNI</a>
	<br>
	<div id="endeContiUNI" style="display: none">
	<form action="index.php" method="POST"> 
		<br>
		<button name="allekurseloeschen">alle Kurse löschen</button>
		<button name="allekursleiterloeschen">alle Kursleiter löschen</button>
		<button name="alleschuelerloeschen">alle Schülerdaten löschen</button>
		<button name="alleklassenloeschen">alle Klassen löschen</button>
	</form>
	</div>

</div>

<?php
	//Kursleiter hinzufügen Button
	if(isset($_POST['kursleiterhinzufuegen']))
	{
		$vorname = $_POST['kursleitervorname'];
		$nachname = $_POST['kursleiternachname'];
		$email = $_POST['kursleiteremail'];
		$passwort = sha1($_POST['kursleiterpasswort']);
		$passwort2 = sha1($_POST['kursleiterpasswort2']);
		
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
						window.location = "/contiuni/index.php";
					</script>
					<?php
				}
		}
	}
	
	//Kursleiter löschen Button
	if(isset($_POST['kursleiterloeschen']))
	{
		$kursleiter = $_POST['kursleiterliste'];
		
		$sqlselectkurs = "select k.kursleiter from joem2_contiuni_kurs k join joem2_contiuni_kursleiter kl on k.kursleiter = kl.personenid join joem2_contiuni_person p on p.personenid = kl.personenid where p.email = '".$kursleiter."'";
		$result = $db->query($sqlselectkurs);
		$row = mysqli_fetch_array($result);
		$kursleiterkurs = $row["kursleiter"];

		if (!$kursleiterkurs)
		{
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
				window.location = "/contiuni/index.php";
			</script>
			<?php
		}
		else
		{
			?>
			<script>
				alert('Kursleiter kann nicht gelöscht werden, da er noch bei einem Kurs als Kursleiter fungiert.');
				window.location = "/contiuni/index.php";
			</script>
			<?php
		}
	}
	
	//Kursleiter bearbeiten Button
	if(isset($_POST['kursleiterbearbeiten']))
	{
		$kursleiter = $_POST['kursleiterliste'];
		$vorname = $_POST['kursleitervorname'];
		$nachname = $_POST['kursleiternachname'];
		$email = $_POST['kursleiteremail'];
		$passwort = sha1($_POST['kursleiterpasswort']);
		$passwort2 = sha1($_POST['kursleiterpasswort2']);
		
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
							window.location = "/contiuni/index.php";
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
							window.location = "/contiuni/index.php";
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
		$passwort = sha1($_POST['administratorpasswort']);
		$passwort2 = sha1($_POST['administratorpasswort2']);
		
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
						window.location = "/contiuni/index.php";
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
			window.location = "/contiuni/index.php";
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
		$passwort = sha1($_POST['administratorpasswort']);
		$passwort2 = sha1($_POST['administratorpasswort2']);
		
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
							window.location = "/contiuni/index.php";
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
							window.location = "/contiuni/index.php";
						</script>
					<?php
				}
				
			}
		}
		
	}
	
	//Klasse erstellen
	if(isset($_POST['klasseerstellen']))
	{
		$klasse = $_POST['klassennameinput'];	
		
		if($klasse == null)
		{
		?>
		<script>
			alert('Geben Sie einen Klassennamen ein!');
		</script>
		<?php
		}
		else
		{
			$sqlklasse = "insert into joem2_contiuni_klasse (klassenname) values('".$klasse."');";
			$db->query($sqlklasse);
			
			?>
			<script>
				alert('Klasse erstellt!');
				window.location = "/contiuni/index.php";
			</script>
			<?php
		}
	}


	//Kurs hinzufügen
	if(isset($_POST['kurshinzufuegen']))
	{	
    $gueltigerkurs = true;
		$kursname = $_POST['kursname'];
		$kursleiterid = $_POST['kursleiterlistekurs'];
		$veranstaltungsort = $_POST['veranstaltungsort'];
		$teilnehmeranzahl = $_POST['teilnehmeranzahl'];
		$anmeldefrist = $_POST['anmeldefrist'];
		$kursbeginn = $_POST['kursstart'];
		$kursende = $_POST['kursende'];
		$sonstigeinformationen = $_POST['sonstigeinformationen'];
		$klassenbeschraenkung = $_POST['klassenbeschraenkung'];
		
		if($sonstigeinformationen == null)
		{
			$sonstigeinformationen = "";
		}
		
		if($klassenbeschraenkung == null)
		{
			$klassenbeschraenkung = "";
		}
		
    if ($anmeldefrist > $kursbeginn){
      ?>
      <script>
        alert('Die Anmeldefrist endet nach dem Kursbeginn.');
      </script>
      <?php
      $gueltigerkurs = false;
    }
    
    if ($kursbeginn > $kursende){
      ?>
      <script>
        alert('Der Kursende endet vor dem Kursbeginn.');
      </script>
      <?php
      $gueltigerkurs = false;
    }
    
    if ($gueltigerkurs){
      $sqlkurs = "insert into joem2_contiuni_kurs (kursname, kursleiter, veranstaltungsort, teilnehmeranzahl, anmeldefrist, kursbeginn, kursende, sonstigeinformationen, klassenbeschraenkung) values('$kursname', '$kursleiterid', '$veranstaltungsort', '$teilnehmeranzahl', '$anmeldefrist', '$kursbeginn', '$kursende', '$sonstigeinformationen', '$klassenbeschraenkung');";
      $db->query($sqlkurs);
      
      ?>
      <script>
        alert('Kurs erstellt!');
        window.location = "/contiuni/index.php";
      </script>
      <?php
    }
		
	}
	
	//Kurs bearbeiten
	if(isset($_POST['kursbearbeiten']))
	{
    $gueltigerkurs = true;
		$kursid = $_POST['kursliste'];
		$kursname = $_POST['kursname'];
		$kursleiterid = $_POST['kursleiterlistekurs'];
		$veranstaltungsort = $_POST['veranstaltungsort'];
		$teilnehmeranzahl = $_POST['teilnehmeranzahl'];
		$anmeldefrist = $_POST['anmeldefrist'];
		$kursbeginn = $_POST['kursstart'];
		$kursende = $_POST['kursende'];
		$sonstigeinformationen = $_POST['sonstigeinformationen'];
		$klassenbeschraenkung = $_POST['klassenbeschraenkung'];
		
		if($sonstigeinformationen == null)
		{
			$sonstigeinformationen = "";
		}
		
		if($klassenbeschraenkung == null)
		{
			$klassenbeschraenkung = "";
		}
		
    if ($anmeldefrist > $kursbeginn){
      ?>
      <script>
        alert('Die Anmeldefrist endet nach dem Kursbeginn.');
      </script>
      <?php
      $gueltigerkurs = false;
    }
    
    if ($kursbeginn > $kursende){
      ?>
      <script>
        alert('Der Kursende endet vor dem Kursbeginn.');
      </script>
      <?php
      $gueltigerkurs = false;
    }
    
    
    if ($gueltigerkurs){ 
      $sqlkursupdate = "update joem2_contiuni_kurs set kursname =\"" . $kursname . "\", kursleiter= \"" .$kursleiterid . "\", veranstaltungsort= \"" . $veranstaltungsort . "\", teilnehmeranzahl=\"" .$teilnehmeranzahl . "\", anmeldefrist= \"" .$anmeldefrist . "\", kursbeginn=\"" . $kursbeginn . "\", kursende=\"" . $kursende . "\", sonstigeinformationen=\"" . $sonstigeinformationen . "\", klassenbeschraenkung=\"" .$klassenbeschraenkung . "\" where kursid = \"" . $kursid . "\";";
      
      $db->query($sqlkursupdate);
      
      ?>
      <script>
        alert('Kurs bearbeitet!');
        window.location = "/contiuni/index.php";
      </script>
      <?php
    }
	}

	//Kurs löschen
	if(isset($_POST['kursloeschen']))
	{
		$kursid = $_POST['kursliste'];
		
		$sqlselectkurs = "select kursid from joem2_contiuni_schuelerkurs where kursid = \"" . $kursid . "\";";
		$result = $db->query($sqlselectkurs);
		$row = mysqli_fetch_array($result);
		$schuelerkurs = $row["kursid"];
		
		if($schuelerkurs)
		{
			?>
			<script>
				alert('Es ist noch ein Schüler bei diesem Kurs angemeldet!');
			</script>
			<?php
		}
		else
		{
			$sqlkursdelete = "delete from joem2_contiuni_kurs where kursid = \"" .$kursid . "\";";
			$db->query($sqlkursdelete);
			
			?>
			<script>
				alert('Kurs gelöscht!');
				window.location = "/contiuni/index.php";
			</script>
		<?php
		}
	}
	
	
	//Alle Kurse löschen
	if(isset($_POST['allekurseloeschen']))
	{
		$sqldeletekurse = "delete from joem2_contiuni_kurs;";
		$db->query($sqldeletekurse);
				
		$sqlautoincrement = "alter table joem2_contiuni_kurs auto_increment = 2";
		$db->query($sqlautoincrement);
				
		?>
		<script>
			alert('Alle Kurse wurden gelöscht!');
			window.location = "/contiuni/index.php";
		</script>
		<?php
	}
	
	//Alle Kursleiter löschen
	if(isset($_POST['allekursleiterloeschen']))
	{
  
		$sqlkursleiter = "select joem2_contiuni_kursleiter.personenid from joem2_contiuni_person, joem2_contiuni_kursleiter where joem2_contiuni_person.personenid = joem2_contiuni_kursleiter.personenid;";
		$resultkursleiter = $db->query($sqlkursleiter);
		while($row = mysqli_fetch_array($resultkursleiter))
		{
			$sqldeletekursleiter = "delete from joem2_contiuni_kursleiter where personenid = \"" . $row['personenid'] . "\";";
			$db->query($sqldeletekursleiter);
			
			$sqldeleteperson = "delete from joem2_contiuni_person where personenid = \"" . $row['personenid'] . "\";";
			$db->query($sqldeleteperson);
		}
				
		
		?>
		<script>
			alert('Alle Kursleiter wurden gelöscht!');
			window.location = "/contiuni/index.php";
		</script>
		<?php
	}
	
	//Alle Klassen löschen
	if(isset($_POST['alleklassenloeschen']))
	{
		$sqldeleteklassen = "delete from joem2_contiuni_klasse;";
		$db->query($sqldeleteklassen);
		
		$sqlautoincrement = "alter table joem2_contiuni_klasse auto_increment = 2";
		$db->query($sqlautoincrement);
		
		?>
		<script>
			alert('Alle Klassen wurden gelöscht!');
			window.location = "/contiuni/index.php";
		</script>
		<?php
	}
	
	//Alle Schüler löschen
	if(isset($_POST['alleschuelerloeschen']))
	{
		$sqlschuelerkurs = "delete from joem2_contiuni_schuelerkurs;";
		$db->query($sqlschuelerkurs);
	
		$sqlschueler = "select joem2_contiuni_schueler.personenid from joem2_contiuni_person, joem2_contiuni_schueler where joem2_contiuni_person.personenid = joem2_contiuni_schueler.personenid;";
		$resultschueler = $db->query($sqlschueler);
		while($row = mysqli_fetch_array($resultschueler))
		{
			$sqldeleteschueler = "delete from joem2_contiuni_schueler where personenid = \"" . $row['personenid'] . "\";";
			$db->query($sqldeleteschueler);
			
			$sqldeleteperson = "delete from joem2_contiuni_person where personenid = \"" . $row['personenid'] . "\";";
			$db->query($sqldeleteperson);
		}
				
		$sqlautoincrement = "alter table joem2_contiuni_person auto_increment = 2";
		$db->query($sqlautoincrement);
		
		?>
		<script>
			alert('Alle Schüler wurden gelöscht!');
			window.location = "/contiuni/index.php";
		</script>
		<?php
	}
	
	//Passwort des Schülers zurücksetzen
	if(isset($_POST['passwortreseten']))
	{
		$email = $_POST['passwortreset'];
	
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
				$sqlpassword = "update joem2_contiuni_person set password = null where email = \"" . $row['email'] . "\"";
				$db->query($sqlpassword);
				
				?>
					<script>alert('Passwort wurde erfolgreich zurückgesetzt. Der Schüler muss sich nun neu registrieren!')</script>
				<?php
			}
		}
	}

	//Schüler erstellen
	if(isset($_POST['csvsubmit']))
	{
		$target = basename( $_FILES['uploaded']['name']) ; 
		$ok=1; 
		if(move_uploaded_file($_FILES['uploaded']['tmp_name'], $target)) 
		{
		?>
			<script>
				alert(<?php echo "Die Datei ". basename( $_FILES['uploaded']['name']). " wurde erfolgreich hochgeladen!";?>);
			</script>
		<?php
			
			
			$datei = fopen(basename( $_FILES['uploaded']['name']), "r");
			$daten = fgetcsv($datei, 1000, ";");
			$daten = fgetcsv($datei, 1000, ";");
			
			while ($daten) 
			{
				$vorname = trim($daten[0]);
				$nachname = trim($daten[1]);
				$geschlecht = trim($daten[2]);
				$klasse = trim($daten[3]);
				$schuelernummer = trim($daten[4]);
		
				$sqlinsertperson = "insert into joem2_contiuni_person (vorname, nachname, geschlecht, email) values(\"" . $vorname . "\", \"" . $nachname . "\", \"" . $geschlecht . "\", \"" . $schuelernummer . "\");";
				$db->query($sqlinsertperson);
				
				$sqlpersonenid = "select personenid from joem2_contiuni_person where email =\"". $schuelernummer . "\";";
				$result = $db->query($sqlpersonenid);
				$row = mysqli_fetch_array($result);
				$personenid = $row["personenid"];
				
				$sqlklassenid = "select klassenid from joem2_contiuni_klasse where klassenname = \"" . $klasse . "\";";
				$result2 = $db->query($sqlklassenid);
				
				if($row2 = mysqli_fetch_array($result2))
				{
					$klassenid = $row2["klassenid"];
					
					$sqlinsertschueler = "insert into joem2_contiuni_schueler (personenid, klassenid) values(\"" . $personenid . "\", \"" . $klassenid . "\");";
					$db->query($sqlinsertschueler);
				}
				else
				{
					$sqldeleteperson = "delete from joem2_contiuni_person where personenid = \"". $personenid . "\";";
					$db->query($sqldeleteperson);				
				}
				$daten = fgetcsv($datei, 1000, ";");
				
			}
		} 
		else 
		{
		?>
			<script>
				alert(<?php echo "Es ist ein Fehler beim Dateiupload aufgetreten";?>);
			</script>
		<?php
		}
	}
	?>
	

<?php

$db->close();
}
else
{
	?><script>window.location = "/contiuni/index.php";</script><?php
}
?>