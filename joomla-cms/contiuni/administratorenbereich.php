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
	<div id="personenverwalten" style="display: none">
		<fieldset name="kursleiter">
			<legend>Kursleiter</legend>
			<select name="kursleiterliste" size="4">
				<option>Kursleiter1</option>
				<option>Kursleiter2</option>
				<option>kursleiter3 mit ganz langen Namen</option>
			</select>
			<br>
			<br>
			<button>Kursleiter hinzufügen</button>
			<button>Kursleiter bearbeiten</button>
			<button>Kursleiter löschen</button>
			
		</fieldset>
		
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

	<a href="javascript:toggle('schuelerverwalten')" style="text-decoration:none; border-bottom:dotted #F69F2B; color:black;">Schülerlisten</a>
	<br>
	<div id="schuelerverwalten" style="display: none">
	
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
		<button>alle Schülerdaten löschen</button>
		<button>alle Kurse löschen</button>
	</div>
	
</div>