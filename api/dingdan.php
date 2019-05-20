<?php
    header('content-type:text/html;charset=utf-8');
   include 'conn.php';//链接数据库

    //接受前台发送的需求
  $mobile = isset($_POST['mobile']) ? $_POST['mobile'] : '';
  $id = isset($_POST['id']) ? $_POST['id'] : '';

    // 插入订单表
    if($id&&$mobile){
    $sql = "INSERT INTO dingdan (gid,user) VALUES ('$id','$mobile');";
      }
      $res = $conn -> query($sql);
      if($res){//存在，输出时，num++
        echo 'yes';

      }else{//不存在，用回调地狱promise，then，用gid查询商品列表渲染
        echo 'no';
      }


// ?>