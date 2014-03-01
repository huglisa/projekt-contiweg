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

<div class="anmelden">
<h1 style="text-align:center; color:#F69F2B">ContiUNI</h1>
	<div>
		<div>
			<label id="username-lbl">E-Mail Adresse *</label>						
		</div>
		<div>
			<input type="email" required size="30" id="anmeldeemail" name="anmeldeemail" placeholder="E-Mail Adresse" value=" ">
		</div>
	</div>
	<div>
		<div>
			<label id="password-lbl">Passwort *</label>
		</div>
		<div>
			<input type="password" required size="30" id="anmeldepasswort" name="anmedldepasswort" placeholder="Passwort" value="">						
		</div>
	</div>		
	<br>
	<button type="submit" name="anmelden">Anmelden</button>
	<a href="/contiuni/administratorenbereich.php" style="color:#F69F2B; text-decoration:none;">Administratorenbereich </a>
	<a href="/contiuni/schuelerbereich.php" style="color:#F69F2B; text-decoration:none;">Schülerbereich </a>
	<a href="/contiuni/kursleiterbereich.php" style="color:#F69F2B; text-decoration:none;">Kursleiterbereich</a>
	<br>
	<a href="/contiuni/registrieren.php" style="color:#F69F2B; text-decoration:none;">Registrieren</a>
</div>