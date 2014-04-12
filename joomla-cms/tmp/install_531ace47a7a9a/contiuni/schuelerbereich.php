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

<div class="schuelerbereich">
	<h2 style="text-align:center; color:#F69F2B">Schülerbereich</h2>
	
	<fieldset>
		<legend>Alle Kurse welche noch ausgewählt werden können:</legend>
		<select name="kursliste" size="4">
			<option>Kurs1</option>
			<option>Kurs2</option>
			<option>kurs3 mit ganz langen Namen</option>
		</select>
		<br>
		<br>
		<table border="1">
			<tr>
				<td>Kurs:</td>
				<td>Kurs1</td>
			</tr>
			<tr>
				<td>Kursleiter:</td>
				<td>Kursleiter1</td>
			</tr>
		</table>
		<br>
		<button>Anmelden</button>
	</fieldset>
	<br>
	<fieldset>
		<legend>Alle Kurse welche bereits ausgewählt wurden:</legend>
		<select name="kursliste" size="4">
			<option>Kurs1</option>
			<option>Kurs2</option>
			<option>kurs3 mit ganz langen Namen</option>
		</select>
		<br>
		<br>
		<table border="1">
			<tr>
				<td>Kurs:</td>
				<td>Kurs1</td>
			</tr>
			<tr>
				<td>Kursleiter:</td>
				<td>Kursleiter1</td>
			</tr>
		</table>
		<br>
		<br>
		<button>Abmelden</button>
	</fieldset>
</div>