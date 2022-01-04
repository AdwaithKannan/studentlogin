<?php

session_start();
error_reporting(1);

ini_set('display_errors','on');

define('SITE_URL','http://'.$_SERVER['HTTP_HOST'].'/studentlogin');





 if(empty($_SESSION["userid"]) && ( basename($_SERVER['SCRIPT_NAME']) != 'login.php' && basename($_SERVER['SCRIPT_NAME']) != 'index.php' ) )
{
	echo '<script>window.location = "'.SITE_URL.'/vtc/login.php";</script>';
}
?>