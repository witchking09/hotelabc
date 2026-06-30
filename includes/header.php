<!DOCTYPE HTML>

<head>
<link rel="stylesheet" href="headerstyle.css">
</head>

<header class="site-header">
		
		<?php if ($_SERVER['PHP_SELF'] != "/hotelabc/public/homepage.php" ): 
		?>
			<a href="http://localhost/hotelabc/public/homepage.php">
			<button type="button">Home</button>
			</a>
		<?php endif; ?>
		
		<a href="http://localhost/hotelabc/public/info.php" target="_self" rel="noopener noreferrer">
            <button type="button">Über uns</button>
        </a>
		
		<?php if (isset($_SESSION["benutzerRolle"]) 
			  && $_SESSION["benutzerRolle"] == "admin" 
			  && $_SERVER['PHP_SELF'] != "/hotelabc/administration/administration.php"): 
		?>
			
			<a href="http://localhost/hotelabc/administration/administration.php">
			<button type="button">Administration</button>
			</a>
			
		<?php endif; ?>
		
		<?php if (isset($_SESSION["benutzerRolle"]) 
			  && (		$_SESSION["benutzerRolle"] == "company" || 	$_SESSION["benutzerRolle"] == "admin") 
			  && 		$_SERVER['PHP_SELF'] != "/hotelabc/hotel_registry/hotel_registry.php"): 
		?>
			  
			<a href="http://localhost/hotelabc/business/hotel_registry.php">
			<button type="button">Hotel Hinzufügen</button>
			</a>
			
		<?php endif; ?>
		
		<?php if (!isset($_SESSION["benutzerID"])
			  && 		 $_SERVER['PHP_SELF'] != "/hotelabc/public/user/register.php"): 
		?>
		  
			<a href="http://localhost/hotelabc/public/user/register.php">
			<button type="button">Registrieren</button>
			</a>
			
		<?php endif; ?>
        
		<?php if (!isset($_SESSION["benutzerID"])
			  &&  $_SERVER['PHP_SELF'] != "/hotelabc/public/user/login.php"): 
		?>
			<a href="http://localhost/hotelabc/public/user/login.php">
			<button type="button">Einloggen</button>
			</a>
			
		<?php endif; ?>
		
		<?php if (isset($_SESSION["benutzerID"])
			  &&  $_SERVER['PHP_SELF'] != "/hotelabc/public/login/login.php"): 
		?>
		
			<a href="http://localhost/hotelabc/public/user/logout.php">
			<button type="button">Abmelden</button>
			</a>
			
		<?php endif; ?>
		
		<?php if (isset($_SESSION["benutzerID"])
			  &&  $_SERVER['PHP_SELF'] != "/hotelabc/public/user/manage_account.php"):
		?>
			<a href="http://localhost/hotelabc/public/user/manage_account.php">
			<button type="button">Konto Verwalten</button>
			</a>
		<?php endif; ?>
		
		<form action="search.php" method="post">
            <label for="search">Search</label><br>
            <input type="text" name="search" id="search"><br>
            <input type="submit" value="Suchen">
        </form>