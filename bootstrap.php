<?php
//define('BASE_URL_PATH', '/');
use CT275\Labs\PDOFactory;

try {
  $PDO = new PDO('mysql:host=localhost;dbname=project', 'root',);
	$PDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (Exception $ex) {
  include('../partials/error.php');
  die();
}