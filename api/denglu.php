<?php
    header('content-type:text/html;charset=utf-8');
    include 'conn.php';

    $mobile =isset($_POST['mobile']) ? $_POST['mobile'] : '15989159942';
    $password =isset($_POST['password']) ? $_POST['password'] : '123456';
    $uid =isset($_POST['password']) ? $_POST['password'] : '123456';
    //1.写sql语句，插入新注册用户信息(还是一条字符串)
    if($mobile&&$password){
    $sql = "SELECT * FROM user WHERE password='$password' AND mobile='$mobile'";
    }
    //2.执行上面$sql
    $res = $conn->query($sql);
    // var_dump($res);//除了SELECT都是返回布偶值
    
    if($res->num_rows) {//找到
        echo 'yes';
    }else{
        echo 'no';
    }
?>