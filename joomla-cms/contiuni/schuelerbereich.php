<?php
if ($_SESSION['benutzerangemeldet'] == 'true'){

$db = mysqli_connect ('IPWEB', 'joomla3', 'g19_m!!KZ5a', 'joomla3');

	if (!$db )
	{
	?>
		<script>alert('Verbindung fehlgeschlagen!')</script>
	<?php
	}
  
?>

<script>
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
	
	var elemkursname = document.getElementById('kursnamean');
	elemkursname.value = kursname;
	
	var elemveranstaltungsort = document.getElementById('veranstaltungsortan');
	elemveranstaltungsort.value = veranstaltungsort;
	
	var elemteilnehmeranzahl = document.getElementById('teilnehmeranzahlan');
	elemteilnehmeranzahl.value = teilnehmeranzahl;
	
	var elemanmeldefrist = document.getElementById('anmeldefristan');
	elemanmeldefrist.value = anmeldefrist;
	
	var elemkursstart = document.getElementById('kursstartan');
	elemkursstart.value = kursstart;
	
	var elemkursende = document.getElementById('kursendean');
	elemkursende.value = kursende;
	
	var elemsonstigeinformationen = document.getElementById('sonstigeinformationenan');
	elemsonstigeinformationen.value = sonstigeinformationen;
	
	var elemklassenbeschraenkung = document.getElementById('klassenbeschraenkungan');
	elemklassenbeschraenkung.value = klassenbeschraenkung;

	var opt = document.getElementById('kursleiterlistekursan');
	
	
	for (var i = 0; i < opt.length; i++){
		if(opt[i].value == kursleiterid){
			opt[i].setAttribute("selected", "selected");
		}else{
			opt[i].removeAttribute("selected", "selected");
		}
	}
	
}


function kurschange2(sel)
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
	
	var elemkursname = document.getElementById('kursnameab');
	elemkursname.value = kursname;
	
	var elemveranstaltungsort = document.getElementById('veranstaltungsortab');
	elemveranstaltungsort.value = veranstaltungsort;
	
	var elemteilnehmeranzahl = document.getElementById('teilnehmeranzahlab');
	elemteilnehmeranzahl.value = teilnehmeranzahl;
	
	var elemanmeldefrist = document.getElementById('anmeldefristab');
	elemanmeldefrist.value = anmeldefrist;
	
	var elemkursstart = document.getElementById('kursstartab');
	elemkursstart.value = kursstart;
	
	var elemkursende = document.getElementById('kursendeab');
	elemkursende.value = kursende;
	
	var elemsonstigeinformationen = document.getElementById('sonstigeinformationenab');
	elemsonstigeinformationen.value = sonstigeinformationen;
	
	var elemklassenbeschraenkung = document.getElementById('klassenbeschraenkungab');
	elemklassenbeschraenkung.value = klassenbeschraenkung;

	var opt = document.getElementById('kursleiterlistekursab');
	
	
	for (var i = 0; i < opt.length; i++){
		if(opt[i].value == kursleiterid){
			opt[i].setAttribute("selected", "selected");
		}else{
			opt[i].removeAttribute("selected", "selected");
		}
	}
	
}
</script>

<div class="schuelerbereich">
	<h2 style="text-align:center; color:#F69F2B">Schülerbereich</h2>
	
	<form action="index.php" method="POST">
	
	<fieldset>
		<legend>Alle Kurse welche noch ausgewählt werden können:</legend>
		<select name="kursliste" id="kursliste" size="6" onchange="kurschange(this)">
			<!--Kurs nicht anzeigen wenn:
				Teilnehmeranzahl schon voll - passt
				Anmeldefrist vorbei - passt
				Bereits ein anderer Kurs an diesem Tag ausgewählt ist
				Klassenbeschränkung
				wo der Schüler bereits angemeldet ist - wird in der db eh nicht gespeichert-->
			<?php
			  $sqlkurse3 = "
				select joem2_contiuni_kurs.kursid as KID
				from joem2_contiuni_kurs, joem2_contiuni_schuelerkurs where joem2_contiuni_kurs.kursid = joem2_contiuni_schuelerkurs.kursid and joem2_contiuni_schuelerkurs.schuelerid = ".$_SESSION['personenid']."; ";
      
      
				/*$sqlkurse = "
				select concat(kursleiter, ';', veranstaltungsort, ';', teilnehmeranzahl, ';', anmeldefrist, ';', kursbeginn, ';', kursende, ';', sonstigeinformationen, ';', klassenbeschraenkung), kursid, kursname 
				from joem2_contiuni_kurs
				where teilnehmeranzahl > (select count(*) from joem2_contiuni_schuelerkurs where joem2_contiuni_schuelerkurs.kursid = joem2_contiuni_kurs.kursid)
				and anmeldefrist >= curdate();";*/
        $sqlkurse = "
				select concat(kursleiter, ';', veranstaltungsort, ';', teilnehmeranzahl, ';', anmeldefrist, ';', kursbeginn, ';', kursende, ';', sonstigeinformationen, ';', klassenbeschraenkung), kursid, kursname 
				from joem2_contiuni_kurs
				where teilnehmeranzahl > (select count(*) from joem2_contiuni_schuelerkurs where joem2_contiuni_schuelerkurs.kursid = joem2_contiuni_kurs.kursid)
				and anmeldefrist >= curdate() and joem2_contiuni_kurs.kursid != (".$sqlkurse3.");";
        
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
		<div name="divkurse" id="divkurse">
			<div>
				<label id="kursname-lbl">Kursname</label>						
			</div>
			<div>
				<input type="text" readonly size="60" id="kursnamean" name="kursnamean" value="">
			</div>
			<div>
				<label id="kursleiter-lbl">Kursleiter</label>
			</div>
			<div>
							
				<select name="kursleiterlistekursan" disabled id="kursleiterlistekursan" size="1">
				<?php
				$sqlkursleiter = "
				select concat(vorname, ' ', nachname), joem2_contiuni_person.personenid 
				  from joem2_contiuni_person, joem2_contiuni_kursleiter 
				where joem2_contiuni_person.personenid = joem2_contiuni_kursleiter.personenid;";
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
				<label id="veranstaltungsort-lbl">Veranstaltungsort</label>						
			</div>
			<div>
				<input type="text" readonly size="60" id="veranstaltungsortan" name="veranstaltungsortan" value="">
			</div>
			<div>
				<label id="teilnehmer-lbl">Teilnehmeranzahl</label>						
			</div>
			<div>
				<input type="number" readonly size="60" id="teilnehmeranzahlan" name="teilnehmeranzahlan" value="">
			</div>
			<div>
				<label id="anmeldefrist-lbl">Anmeldefrist</label>						
			</div>
			<div>
				<input type="date" readonly size="60" id="anmeldefristan" name="anmeldefristan" value="">
			</div>
			<div>
				<label id="kursstart-lbl">Kursstart</label>						
			</div>
			<div>
				<input type="date" readonly size="60" id="kursstartan" name="kursstartan" value="">
			</div>
			<div>
				<label id="kursende-lbl">Kursende</label>						
			</div>
			<div>
				<input type="date" readonly size="60" id="kursendean" name="kursendean" value="">
			</div>
			<div>
				<label id="sonstigeinformationen-lbl">Sonstige Informationen</label>						
			</div>
			<div>
				<input type="text" readonly size="60" id="sonstigeinformationenan" name="sonstigeinformationenan" value="">
			</div>
			<div>
				<label id="klassenbeschränkung-lbl">Klassenbeschränkung </label>						
			</div>
			<div>
				<input type="text" readonly size="60" id="klassenbeschraenkungan" name="klassenbeschraenkungan" value="">
			</div>
		</div>
		<br>
		<button name="anmelden">Anmelden</button>
	</fieldset>

	<fieldset>
		<legend>Alle Kurse welche bereits ausgewählt wurden:</legend>
		<select name="kursliste2" id="kursliste2" size="6" onchange="kurschange2(this)">
			<?php
				$sqlkurse2 = "
				select concat(kursleiter, ';', veranstaltungsort, ';', teilnehmeranzahl, ';', anmeldefrist, ';', kursbeginn, ';', kursende, ';', sonstigeinformationen, ';', klassenbeschraenkung), joem2_contiuni_kurs.kursid as KID, kursname 
				from joem2_contiuni_kurs, joem2_contiuni_schuelerkurs where joem2_contiuni_kurs.kursid = joem2_contiuni_schuelerkurs.kursid and joem2_contiuni_schuelerkurs.schuelerid = ".$_SESSION['personenid']."; ";
				$resultkurse2 = $db->query($sqlkurse2);
				while($row2 = mysqli_fetch_array($resultkurse2))
				{
					?>
					<option label="<?php echo $row2["concat(kursleiter, ';', veranstaltungsort, ';', teilnehmeranzahl, ';', anmeldefrist, ';', kursbeginn, ';', kursende, ';', sonstigeinformationen, ';', klassenbeschraenkung)"]?>" value="<?php echo $row2['KID'];?>"><?php echo $row2["kursname"]?></option>
						
					<?php
				}
			?>
		</select>
		<br>
		<br>
		<div name="divkurse2" id="divkurse2">
			<div>
				<label id="kursname-lbl">Kursname</label>						
			</div>
			<div>
				<input type="text" readonly size="60" id="kursnameab" name="kursnameab" value="">
			</div>
			<div>
				<label id="kursleiter-lbl">Kursleiter</label>
			</div>
			<div>
							
				<select name="kursleiterlistekursab" disabled id="kursleiterlistekursab" size="1">
				<?php
				$sqlkursleiter = "
				select concat(vorname, ' ', nachname), joem2_contiuni_person.personenid 
				  from joem2_contiuni_person, joem2_contiuni_kursleiter 
				where joem2_contiuni_person.personenid = joem2_contiuni_kursleiter.personenid;";
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
				<label id="veranstaltungsort-lbl">Veranstaltungsort</label>						
			</div>
			<div>
				<input type="text" readonly size="60" id="veranstaltungsortab" name="veranstaltungsortab" value="">
			</div>
			<div>
				<label id="teilnehmer-lbl">Teilnehmeranzahl</label>						
			</div>
			<div>
				<input type="number" readonly size="60" id="teilnehmeranzahlab" name="teilnehmeranzahlab" value="">
			</div>
			<div>
				<label id="anmeldefrist-lbl">Anmeldefrist</label>						
			</div>
			<div>
				<input type="date" readonly size="60" id="anmeldefristab" name="anmeldefristab" value="">
			</div>
			<div>
				<label id="kursstart-lbl">Kursstart</label>						
			</div>
			<div>
				<input type="date" readonly size="60" id="kursstartab" name="kursstartab" value="">
			</div>
			<div>
				<label id="kursende-lbl">Kursende</label>						
			</div>
			<div>
				<input type="date" readonly size="60" id="kursendeab" name="kursendeab" value="">
			</div>
			<div>
				<label id="sonstigeinformationen-lbl">Sonstige Informationen</label>						
			</div>
			<div>
				<input type="text" readonly size="60" id="sonstigeinformationenab" name="sonstigeinformationenab" value="">
			</div>
			<div>
				<label id="klassenbeschränkung-lbl">Klassenbeschränkung </label>						
			</div>
			<div>
				<input type="text" readonly size="60" id="klassenbeschraenkungab" name="klassenbeschraenkungab" value="">
			</div>
		</div>
		<br>
		<button name="abmelden">Abmelden</button>
	</fieldset>
	</form>
</div>

<?php
 
//anmelden
if(isset($_POST['anmelden']))
{
	$kurs = $_POST['kursliste'];
	
	$sqlinsertschuelerkurs = 'insert into joem2_contiuni_schuelerkurs values('.$kurs.', '.$_SESSION["personenid"].');';
	$db->query($sqlinsertschuelerkurs);
		
	?>
	<script>
		window.location = "/contiuni/index.php";
	</script>
	<?php
}
else if(isset($_POST['abmelden']))
{ //abmelden
	$kurs2 = $_POST['kursliste2'];
	
	$sqldeleteschuelerkurs = "delete from joem2_contiuni_schuelerkurs where joem2_contiuni_schuelerkurs.kursid = \"". $kurs2 . "\" and joem2_contiuni_schuelerkurs.schuelerid = ".$_SESSION['personenid'].";";
	$db->query($sqldeleteschuelerkurs);
	
	?><script>window.location = "/contiuni/index.php";</script><?php
	
}

?>

<?php

$db->close();

}else{
?><script>window.location = "/contiuni/index.php";</script><?php
}
?>