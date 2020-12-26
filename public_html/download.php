<?php
$settings = json_decode(getenv("CONFIG"), true);
header("Location: ".$settings['app']['dmg']);
?>