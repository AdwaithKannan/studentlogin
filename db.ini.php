<?php

define('HOSTNAME','localhost');

define('DBNAME','vijayaveethi');

define('DBUSER','root');

define('DBPWD','');

?>

<?php

$db = mysqli_connect("localhost","root","","vijayaveethi");

if(!$db)
{
    die("Connection failed: " . mysqli_connect_error());
}

?>