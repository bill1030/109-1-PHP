<?php
    session_start();
    //session_start的作用是开启$_SESION
if (!isset($_SESSION[id])){   
    echo "請輸入帳號密碼";
    echo "<meta http-equiv='refresh' content='3;url=5.login.html''>"; 
}else{
    $conn = mysqli_connect("localhost", "root", "", "mydb");
    $sql ="update bulletin set title='{$_POST[title]}', content='{$_POST[content]}'
         , type={$_POST[type]}, time='{$_POST[time]}' where bid={$_POST[bid]}"; 
    echo $sql;
    if (!mysqli_query($conn, $sql))
        echo "修改佈告錯誤";   
    else  
        echo "修改佈告成功";   
    mysqli_close($conn);
    echo "<meta http-equiv='refresh' content='3;url=bulletin.php''>"; 
}
?>