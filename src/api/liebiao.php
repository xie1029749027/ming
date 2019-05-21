<?php
    //接受前台发送的需求
  $page = isset($_GET['page']) ? $_GET['page'] : '';//第N页
  $num = isset($_GET['num']) ?  $_GET['num'] : '';//每页的商品数量
  $type = isset($_GET['type']) ?  $_GET['type'] : '';
  $order = isset($_GET['order'])? $_GET['order'] : '';
    include 'conn.php';//链接数据库

     $index = ($page - 1) * $num;//第N条开始

    //是否排序的判断
    if($type) {
        //不为空：意味已经有值传过来，需要排序
        $sql = "SELECT * FROM liebiao1 ORDER BY $type $order LIMIT $index,$num";
    }
    else{
        //空：没有传值过来，不需要排序
        $sql = "SELECT * FROM liebiao1 LIMIT $index,$num";
    }
    // echo $sql;
     
     //输入查找语句 
     $res = $conn -> query($sql);//执行语句，得到结果集

     $content = $res->fetch_all(MYSQLI_ASSOC);//集合内的详细内容
     //传出
     // echo json_encode($content,JSON_UNESCAPED_UNICODE);

     //找到商品总数量才能确定button的数量
     //ceil（总数量/每页的数量）【最后向上取整】页数能装下商品的数量
     $sql2 = "SELECT * FROM liebiao1";
     //执行上面那句话
     $res2 = $conn->query($sql2);
     //这里只需要知道商品的数量，并不用知道每条商品的详细信息，所以不用打印详细内容即可直接传出给前端
     // echo json_encode($content,JSON_UNESCAPED_UNICODE);
     // $sql3 = "SELECT * FROM fenye";
    
     // $res3 = $conn->query($sql3);
     // $content1 = $res3->fetch_all(MYSQLI_ASSOC);
    
     $datalist = array(
        'data' => $content,//第一页商品内容（初始）
        'total' => $res2->num_rows,//商品数量
        'page' => $page,
        'num' => $num 
        );
     echo json_encode($datalist,JSON_UNESCAPED_UNICODE);
// ?>