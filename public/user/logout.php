<?php 
			session_start();
			session_unset();
			session_destroy();
			header("Location: /hotelabc/public/homepage.php");
			exit();
?>