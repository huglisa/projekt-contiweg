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
	
	<div>
		<div>
			<label id="vorname-lbl">Vorname *</label>						
		</div>
		<div>
			<input type="text" required size="60" id="registrierenvorname" name="registrierenvorname" placeholder="Vorname" value="">
		</div>
	</div>
	<div>
		<div>
			<label id="nachname-lbl">Nachname *</label>
		</div>
		<div>
			<input type="text" required size="60" id="registrierennachname" name="registrierennachname" placeholder="Nachname" value="">						
		</div>
	</div>
	<div>
		<div>
			<label id="passwort-lbl">Passwort *</label>						
		</div>
		<div>
			<input type="password" required size="60" id="registrierenpasswort" name="registrierenpasswort" placeholder="Passwort" value="">
		</div>
	</div>
	<div>
		<div>
			<label id="passwort2-lbl">Passwort wiederholen *</label>
		</div>
		<div>
			<input type="password" required size="60" id="registrierenpasswort2" name="registrierenpasswort2" placeholder="Passwort wiederholen" value="">						
		</div>
	</div>
	<div>
		<div>
			<label id="email-lbl">E-Mail Adresse *</label>						
		</div>
		<div>
			<input type="email" required size="60" id="registrierenemail" name="registrierenemail" placeholder="E-Mail Adresse" value=" ">
		</div>
	</div>
	<div>
		<div>
			<label id="email2-lbl">E-Mail Adresse wiederholen *</label>
		</div>
		<div>
			<input type="email" required size="60" id="registrierenemail2" name="registrierenemail2" placeholder="E-Mail Adresse wiederholen" value="">						
		</div>
	</div>
	<br>
	<button name="registrieren" type="submit">Registrieren</button>
	<br>
	<a href="/contiuni/index.php" style="color:#F69F2B; text-decoration:none;">Zurück zur Anmeldung</a>
	
</div>
