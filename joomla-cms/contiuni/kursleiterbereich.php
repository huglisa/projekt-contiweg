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

<script>
function kurschange(sel)
{
	var kursid = sel.options[sel.selectedIndex].value;
	var kursname = sel.options[sel.selectedIndex].text;
	var kursdetails = sel.options[sel.selectedIndex].label;
	var splitted = kursdetails.split(";");
	var veranstaltungsort = splitted[0];
	var teilnehmeranzahl = splitted[1];
	var anmeldefrist = splitted[2];
	var kursstart = splitted[3];
	var kursende = splitted[4];
	var sonstigeinformationen = splitted[5];
	var klassenbeschraenkung = splitted[6];
	
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

	
}
</script>


<div class="kursleiterbereich">
	<h2 style="text-align:center; color:#F69F2B">Kursleiterbereich</h2>

	<form action="listen.php" method="POST">
	
	<?php
		$personenid = htmlspecialchars($_GET["personenid"]);
	?>
	
	<select name="kursliste" id="kursliste"  size="6" onchange="kurschange(this)">
		<?php
			$sqlkurse = "select concat(kursid, ':', kursname), concat(veranstaltungsort, ';', teilnehmeranzahl, ';', anmeldefrist, ';', kursbeginn, ';', kursende, ';', sonstigeinformationen, ';', klassenbeschraenkung), kursid, kursname from joem2_contiuni_kurs where joem2_contiuni_kurs.kursleiter = \"" . $personenid . "\"";
			$resultkurse = $db->query($sqlkurse);
			while($row = mysqli_fetch_array($resultkurse))
			{
				?>
				<option label="<?php echo $row["concat(veranstaltungsort, ';', teilnehmeranzahl, ';', anmeldefrist, ';', kursbeginn, ';', kursende, ';', sonstigeinformationen, ';', klassenbeschraenkung)"]?>" value="<?php echo $row["concat(kursid, ':', kursname)"];?>"><?php echo $row["kursname"]?></option>
						
			<?php
			}
			?>
	</select>
	<br>
	<br>
	<span>Kursinformationen:</span>
	<div name="divkurse" id="divkurse">
				<div>
					<label id="kursname-lbl">Kursname</label>						
				</div>
				<div>
					<input type="text" readonly size="60" id="kursname" name="kursname" value="">
				</div>
				<div>
					<label id="veranstaltungsort-lbl">Veranstaltungsort</label>						
				</div>
				<div>
					<input type="text" readonly size="60" id="veranstaltungsort" name="veranstaltungsort" value="">
				</div>
				<div>
					<label id="teilnehmer-lbl">Teilnehmeranzahl</label>						
				</div>
				<div>
					<input type="number" readonly size="60" id="teilnehmeranzahl" name="teilnehmeranzahl" value="">
				</div>
				<div>
					<label id="anmeldefrist-lbl">Anmeldefrist</label>						
				</div>
				<div>
					<input type="datetime-local" readonly size="60" id="anmeldefrist" name="anmeldefrist" value="">
				</div>
				<div>
					<label id="kursstart-lbl">Kursstart</label>						
				</div>
				<div>
					<input type="datetime-local" readonly size="60" id="kursstart" name="kursstart" value="">
				</div>
				<div>
					<label id="kursende-lbl">Kursende</label>						
				</div>
				<div>
					<input type="datetime-local" readonly size="60" id="kursende" name="kursende" value="">
				</div>
				<div>
					<label id="sonstigeinformationen-lbl">Sonstige Informationen</label>						
				</div>
				<div>
					<input type="text" readonly size="60" id="sonstigeinformationen" name="sonstigeinformationen" value="">
				</div>
				<div>
					<label id="klassenbeschränkung-lbl">Klassenbeschränkung</label>						
				</div>
				<div>
					<input type="text" readonly size="60" id="klassenbeschraenkung" name="klassenbeschraenkung" value="">
				</div>
			</div>
	<br>
	<span>Alle Schüler anzeigen welche aktuell bei dem ausgewählten Kurs angemeldet sind:</span>
	<br><br>
		<button name="schuelerkurskursleiter">Schüler anzeigen</button>
	<br>
	
	</form>
	
</div>

<?php

?>


<?php

$db->close();
?>