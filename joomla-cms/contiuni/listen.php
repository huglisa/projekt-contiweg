<?php
	$db = mysqli_connect ('IPWEB', 'joomla3', 'g19_m!!KZ5a', 'joomla3');

	if (!$db )
	{
	?>
		<script>alert('Verbindung fehlgeschlagen!')</script>
	<?php
	}
?>

<div class="anmelden">
<?php

//Tabelle mit allen Schüler eines Kurses anzeigen
	if(isset($_POST['schuelerkurs']))
	{
		$kurs = $_POST['schuelerkursliste'];
		$test = explode(':', $_POST['schuelerkursliste']);
		$kursid = $test[0];
		$kursname = $test[1];
		
		?>
		<span>Alle Schüler von <?php echo $kursname;?></span>
			<table border="1" cellspacing="0" cellpadding="5">
				<tr>
					<th>Vorname</th>
					<th>Nachname</th>
					<th>Klasse</th>
				</tr>
				<?php
				$sqlschueler = "select joem2_contiuni_klasse.klassenname, joem2_contiuni_person.vorname, joem2_contiuni_person.nachname from joem2_contiuni_person, joem2_contiuni_schueler, joem2_contiuni_klasse, joem2_contiuni_schuelerkurs where joem2_contiuni_person.personenid = joem2_contiuni_schueler.personenid and joem2_contiuni_klasse.klassenid = joem2_contiuni_schueler.klassenid and joem2_contiuni_schuelerkurs.schuelerid = joem2_contiuni_schueler.personenid and joem2_contiuni_schuelerkurs.kursid = \"" . $kursid . "\";";
				$resultschueler = $db->query($sqlschueler);
				while($row = mysqli_fetch_array($resultschueler))
				{
				?>
					<tr>
						<td><?php echo $row["vorname"];?></td>
						<td><?php echo $row["nachname"];?></td>
						<td><?php echo $row["klassenname"];?></td>
					</tr>
				<?php
				}
				?>
			</table>
		</script>
		<?php
	}
	
//Tabelle von allen nicht registrierten Schülern wird angezeigt
	if(isset($_POST['nichtregistrierteschueler']))
	{	
	?>
	<span>Alle noch nicht registrierten Schüler</span>
		<table border="1" cellpadding="5" cellspacing="0">
			<tr>
				<th>Vorname</th>
				<th>Nachname</th>
				<th>Klasse</th>
			</tr>
			<?php
			$sqlschueler = "select joem2_contiuni_klasse.klassenname, joem2_contiuni_person.vorname, joem2_contiuni_person.nachname from joem2_contiuni_person, joem2_contiuni_schueler, joem2_contiuni_klasse where joem2_contiuni_person.personenid = joem2_contiuni_schueler.personenid and joem2_contiuni_klasse.klassenid = joem2_contiuni_schueler.klassenid and joem2_contiuni_person.password is null;";
			$resultschueler = $db->query($sqlschueler);
			while($row = mysqli_fetch_array($resultschueler))
			{
			?>
				<tr>
					<td><?php echo $row["vorname"];?></td>
					<td><?php echo $row["nachname"];?></td>
					<td><?php echo $row["klassenname"];?></td>
				</tr>
			<?php
			}
			?>
					
		</table>
	<?php
	}
	
//Tabelle mit allen Schüler einer Klasse anzeigen
	if(isset($_POST['schuelerklasse']))
	{
		$klasse = $_POST['schuelerklassenliste'];
		$test = explode(':', $_POST['schuelerklassenliste']);
		$klassenid = $test[0];
		$klassenname = $test[1];
		
		?>
		<span>Alle Schüler der <?php echo $klassenname;?> mit Kurszuteilung</span>
			<table border="1" cellspacing="0" cellpadding="5">
				<tr>
					<th>Vorname</th>
					<th>Nachname</th>
					<th>Kurs</th>
				</tr>
				<?php
				$sqlschueler = "select joem2_contiuni_kurs.kursname, joem2_contiuni_person.vorname, joem2_contiuni_person.nachname from joem2_contiuni_person, joem2_contiuni_schueler, joem2_contiuni_kurs, joem2_contiuni_schuelerkurs where joem2_contiuni_person.personenid = joem2_contiuni_schueler.personenid and joem2_contiuni_kurs.kursid = joem2_contiuni_schuelerkurs.kursid and joem2_contiuni_schuelerkurs.schuelerid = joem2_contiuni_schueler.personenid and joem2_contiuni_schueler.klassenid = \"" . $klassenid . "\";";
				$resultschueler = $db->query($sqlschueler);
				while($row = mysqli_fetch_array($resultschueler))
				{
				?>
					<tr>
						<td><?php echo $row["vorname"];?></td>
						<td><?php echo $row["nachname"];?></td>
						<td><?php echo $row["kursname"];?></td>
					</tr>
				<?php
				}
				?>
			</table>
		<?php
	}
?>
</div>

<?php

$db->close();
?>