<?php
session_start();
/*
if ($_GET['session'] == 'rm'){
  $_SESSION = array();
  session_destroy();
  echo "session destroyed";
}
if ($_GET['session'] == 'print'){
  print_r($_SESSION);
}


if ($_GET['session'] == 'printpost'){
  print_r($_POST);
}*/

if (isset($_POST['logoff'])){
  $_SESSION = array();
  session_destroy();
}

?>

<html>
<head>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<?php if($_SESSION['benutzerangemeldet'] == 'true'){?>
    <div class="abmelden">
      <form action="index.php" method="POST">
        <button type="submit" name="logoff">Abmelden</button>
      </form>
      <?php if (isset($_POST['nichtregistrierteschueler']) || isset($_POST['schuelerkurs']) || isset($_POST['schuelerklasse'])){ ?>
        <a href="/contiuni/index.php" style="color:#F69F2B; text-decoration:none;">Zurück</a>
      <?php } ?>

    </div><?php
  
  
  switch ($_SESSION['benutzertyp']){
    case 'schueler':
      include "schuelerbereich.php";
      break;
    case 'kursleiter':
      include "kursleiterbereich.php";
      break;
    case 'administrator':
      if (isset($_POST['nichtregistrierteschueler']) || isset($_POST['schuelerkurs']) || isset($_POST['schuelerklasse'])){
        include "listen.php";
      }else{
        include "administratorenbereich.php";
      }
      break;
    default:
      echo "ungültige Seite";
      break;
  }
}else if($_GET['seite'] == 'registrieren'){
   include 'registrieren.php';
}else{ ?>
  <div class="anmelden">
    <h1 style="text-align:center; color:#F69F2B">ContiUNI</h1>
      <form action="index.php" method="POST">
	      <div>
		      <div>
			      <label id="username-lbl">Schülernummer oder E-Mail Adresse *</label>						
		      </div>
		      <div>
			    <input type="text" required size="30" id="anmeldeemail" name="anmeldeemail" placeholder="56325 oder test@hotmail.com" value="<?php echo $_POST['anmeldeemail']; ?>">
		      </div>
	     </div>
	     <div>
		     <div>
			      <label id="password-lbl">Passwort *</label>
		     </div>
		     <div>
			     <input type="password" required size="30" id="anmeldepasswort" name="anmeldepasswort" placeholder="maxi09" value="">						
		     </div>
	     </div>		
	     <br>
	     <button type="submit" name="anmelden">Anmelden</button>
     </form>
	 <a href="/contiuni/index.php?seite=registrieren" style="color:#F69F2B; text-decoration:none;">Registrieren</a>
<?php
}
	if(isset($_POST['anmelden']))
	{
	
		$_SESSION['email'] = $_POST['anmeldeemail'];
		$_SESSION['passwort'] = $_POST['anmeldepasswort'];
		
	  $db = mysqli_connect ('IPWEB', 'joomla3', 'g19_m!!KZ5a', 'joomla3');
    
    
		if (!$db )
		{?>
      <script>alert('Verbindung fehlgeschlagen!')</script>
		<?php
    }
	
		$sql = "select password from joem2_contiuni_person where email =\"". $_SESSION['email'] . "\";";
		$result = $db->query($sql);
		if(!$result)
		{
		?>
			<script>alert('Email Adresse existiert nicht!')</script>
		<?php
		}
		else
		{	
			if($row = mysqli_fetch_array($result)) 
			{
				if($row["password"] == $_SESSION['passwort'])
				{					
					$sqlpersonenid = "select personenid, vorname, nachname from joem2_contiuni_person where email =\"". $_SESSION['email'] . "\";";
					$result = $db->query($sqlpersonenid);
					$row = mysqli_fetch_array($result);
					$personenid = $row["personenid"];
          $_SESSION["personenid"] = $personenid;
          $_SESSION['benutzerangemeldet'] = 'true';
          
          $vorname = $row["vorname"];
          $_SESSION["nachname"] = $row["nachname"];
					
					$sqlschueler = "select personenid from joem2_contiuni_schueler where personenid =\"". $personenid . "\";";
					$resultschueler = $db->query($sqlschueler);
					$rowschueler = mysqli_fetch_array($resultschueler);
					$personenidschueler = $rowschueler["personenid"];
					if($personenidschueler == $personenid)
					{
						?>
						<script type="text/javascript">
							window.location = "/contiuni/index.php";
						</script>
						<?php
            $_SESSION['benutzertyp'] = 'schueler';
					}
					
					$sqlkursleiter = "select personenid from joem2_contiuni_kursleiter where personenid =\"". $personenid . "\";";
					$resultkursleiter = $db->query($sqlkursleiter);
					$rowkursleiter = mysqli_fetch_array($resultkursleiter);
					$personenidkursleiter = $rowkursleiter["personenid"];
					if($personenidkursleiter == $personenid)
					{
						?>
						<script type="text/javascript">
							window.location = "/contiuni/index.php";
						</script>
						<?php
            $_SESSION['benutzertyp'] = 'kursleiter';
					}
					
					$sqladmin = "select personenid from joem2_contiuni_administrator where personenid =\"". $personenid . "\";";
					$resultadmin = $db->query($sqladmin);
					$rowadmin = mysqli_fetch_array($resultadmin);
					$personenidadmin = $rowadmin["personenid"];
					if($personenidadmin == $personenid)
					{
						?>
						<script type="text/javascript">
							window.location = "/contiuni/index.php";
						</script>
						<?php
            $_SESSION['benutzertyp'] = 'administrator';
					}
					
				}
				else
				{
				?>
					<script>alert('Passwort falsch!')</script>
				<?php
				}				
			}
			else
			{
				?>
					<script>alert('Schülernummer oder Email Adresse existiert nicht!')</script>
				<?php
			}
		}
		
		$db->close();
	}		
	?>

</div>
</body>
</html>