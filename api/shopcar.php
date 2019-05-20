<?php
    header('content-type:text/html;charset=utf-8');
   include 'conn.php';//链接数据库

    //接受前台发送的需求
  $id = isset($_POST['id']) ? $_POST['id'] : '';

    // 插入订单表
   $sql = "SELECT * FROM liebiao1 WHERE  id = '$id'"
    $res = $conn -> query($sql);
    $content = $res->fetch_all(MYSQLI_ASSOC);

      $datalist = array(
        'data' => $content,//第一页商品内容（初始）
        'total' => $res2->num_rows,//商品数量
        'page' => $page,
        'num' => $num 
        );
     echo json_encode($datalist,JSON_UNESCAPED_UNICODE);


// ?>