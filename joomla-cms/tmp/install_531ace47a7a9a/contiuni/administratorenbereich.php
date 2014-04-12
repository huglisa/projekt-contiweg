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
					<label id="kursleiterpasswort-lbl">Passwort *</label>						
				</div>
				<div>
					<input type="password" required size="60" id="kursleiterpasswort" name="kursleiterpasswort" value="">
				</div>
				<div>
					<label id="kursleiterpasswort2-lbl">Passwort wiederholen *</label>						
				</div>
				<div>
					<input type="password" required size="60" id="kursleiterpasswort2" name="kursleiterpasswort2" value="">
				</div>
			</div>
			</td>
			</tr>
			</table>
		</fieldset>
	</form>
		<fieldset name="administratoren">
			<legend>Administratoren</legend>
			<select name="administratorenliste" size="4">
				<option>Admin1</option>
				<option>Admin2</option>
				<option>Admin3 mit ganz langen Namen</option>
			</select>
			<br>
			<br>
			<button>Administrator hinzufügen</button>
			<button>Administrator bearbeiten</button>
			<button>Administrator löschen</button>
		</fieldset>
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
					<script>alert('Normalerweise muss die selectbox upgedatet werden!');
					</script>
					<?php
				}
			
		}
	}
	
	if(isset($_POST['kursleiterloeschen']))
	{
		
		$kursleiter = $_POST['kursleiterliste'];
		echo $kursleiter;
		
	}
	
	

?>
<script>
function kursleiterchange(sel)
{
	var value = sel.options[sel.selectedIndex].value; 
	alert(value);
	
	<?php
	$kursleiter = $_POST['kursleiterliste'];
	?>
	alert("Test<?php echo $_POST['kursleiterliste'];?>");



}
</script><?php

$db->close();
?>