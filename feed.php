<?php
date_default_timezone_set('America/Cuiaba');
require_once "config/DB.php";

$db = new DB;

$conn = $db->getConnection();

$db->generateRSSFeed();

?>