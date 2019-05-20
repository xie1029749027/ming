<?php

    //1.准备参数
    $severname = 'localhost';
    $username = 'root';
    $password1 = '';
    $dbname = 'login';

    //2.创建链接
    $conn = new mysqli($severname,$username,$password1,$dbname);
    //报错提示信息
    //php调用属性：obj ->name
    if($conn ->connect_error) {
        die("连接失败: " . $conn->connect_error);
    }
    //检测:看到下面这句话就证明连接已经成功
    // echo '连接成功'


    //关闭结果集和数据库
    // $res->close();
    // $conn->close();
?>