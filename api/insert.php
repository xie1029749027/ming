<?php
    // header('content-type:text/html;charset=utf-8');
   include 'conn.php';//链接数据库

    //接受前台发送的需求
  $mobile = isset($_POST['mobile']) ? $_POST['mobile'] : '';

  $password = isset($_POST['password']) ? $_POST['password'] : '';
  $uid = isset($_POST['uid']) ? $_POST['uid'] : '';


    $sql = "INSERT INTO user (mobile,password,uid) VALUES ('$mobile','$password','$uid')";
      
     $res = $conn -> query($sql);
      if($res){//成功
        echo 'yes';
      }else{//不存在
        echo 'no';
      }


// ?>