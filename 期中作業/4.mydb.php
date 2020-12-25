<?php
    error_reporting(0);#把警告關掉
    #php要怎麼跟mysql資料庫進行連結，有3步驟
    #1. mysqli_connect要課IP、帳密、以及連結資料庫
    $conn = mysqli_connect("localhost","root","", "mydb");
    #2.在資料庫中找到表格的資料
    $result=mysqli_query($conn, "select * from user");
    #3.以mysqli_fetch_array來擷取每一筆資料
    $row=mysqli_fetch_array($result);
    echo $row[id]." ".$row[pwd];
    echo "<br>";

    $row=mysqli_fetch_array($result);
    echo $row[id]." ".$row[pwd];
    echo "<br>";

?>