<?php
$hostname = gethostname();

$ipAddress = $_SERVER['SERVER_ADDR'];

echo "Hostname: " . $hostname . "<br>";
echo "IP Address: " . $ipAddress;
?>