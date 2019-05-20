<?php
/**
 * @Author: Marte
 * @Date:   2019-05-13 16:43:04
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-05-17 16:24:46
 */
include 'conn.php';

//1.写查询语句
$sql = 'SELECT * FROM liebiao';
//2.执行sql语句
$res = $conn->query($sql);//执行sql返回一个结果集
  // var_dump($res);
   //3.在结果集里面抽取你要的数据
$content = $res->fetch_all(MYSQLI_ASSOC);
    // var_dump($content);

//4.把对象转成字符串，传给前端
    echo json_encode($content,JSON_UNESCAPED_UNICODE);   

    
   
 
    
?>