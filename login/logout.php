<?php 
session_start();
//menghancurkan $_SESSION["admin"]
//session_destroy();
unset($_SESSION["login.php"]);
echo "<script>alert('Anda telah Logout');</script>";
echo "<script>location='../';</script>";
?>