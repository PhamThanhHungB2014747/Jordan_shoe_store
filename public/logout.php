<?php
session_start();
define('TITLE', 'Logout');
// include '../partials/header.php';

if (isset($_SESSION['user'])) {
	unset($_SESSION['user']);
}

// echo '<p>Bạn đã đăng xuất.</p>';
header('location: ../');

// include '../partials/footer.php';
?>