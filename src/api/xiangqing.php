<?php
/**
 * @Author: Marte
 * @Date:   2019-05-13 16:43:04
 * @Last Modified by:   Marte
 * @Last Modified time: 2019-05-19 13:37:39
 */
include 'conn.php';
  $id = isset($_GET['id']) ? $_GET['id'] : '';
//1.写查询语句
if($id){$sql = "SELECT * FROM liebiao1 where id='$id'";}

//2.执行sql语句
$res = $conn->query($sql);//执行sql返回一个结果集
  // var_dump($res);
   //3.在结果集里面抽取你要的数据
$content = $res->fetch_all(MYSQLI_ASSOC);
    // var_dump($content);

//4.把对象转成字符串，传给前端
    echo json_encode($content,JSON_UNESCAPED_UNICODE);   
   
 
    
?>