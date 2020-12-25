<?php

session_start();
//session_start的作用是开启$_SESION
unset($_SESSION["id"]);
//session_destroy(); //伺服器上的所有session variable清空
echo '登出中......';
echo '<meta http-equiv=REFRESH CONTENT=2;url=5.login.html>';

?>