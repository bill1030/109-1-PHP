<?php
    error_reporting();
    session_start();
    if(!isset($_SESSION["counter"])){
        $_SESSION["counter"]=1;
    }
    else{
        $_SESSION["counter"]++;
    }
    echo "登陸人次：{$_SESSION["counter"]}人次";

?>