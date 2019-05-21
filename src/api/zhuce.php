<?php
    // header('content-type:text/html;charset=utf-8');
   include 'conn.php';//链接数据库

    //接受前台发送的需求
  $mobile = isset($_POST['mobile']) ? $_POST['mobile'] : '';

  $password = isset($_POST['password']) ? $_POST['password'] : '';
  $uid = isset($_POST['uid']) ? $_POST['uid'] : '';

    // 查账号
      if($mobile){
      $sql = "SELECT * FROM user WHERE mobile = '$mobile'";
      }
      // 查昵称
      else if($uid){
        $sql = "SELECT * FROM user WHERE  uid = '$uid'";
      }
      // $sql1 = "SELECT * FROM user WHERE password = '$password'";
      // 注册
      else if($mobile&&$password&&$uid){
       $sql = "INSERT INTO user (mobile,password,uid) VALUES ('$mobile','$password','$uid')";
      }
      
      $res = $conn -> query($sql);
      if($res->num_rows){//存在，不允许注册
        echo 'no';
      }else{//不存在，允许注册
        echo 'yes';
      }


// ?>