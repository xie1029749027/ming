<?php  
    include 'conn.php';
    
    $account = isset($_GET['account']) ? $_GET['account'] : '15989159942';
   
    $sql = "select * from dingdan inner join liebiao1 on dingdan.gid = liebiao1.id where dingdan.name =  '".$account."'";
    $res = $conn->query($sql);
    $data = $res->fetch_all(MYSQLI_ASSOC);
    $arr = array(
        'data'=>$data,
        'account'=>$account
        );
   echo json_encode($arr,JSON_UNESCAPED_UNICODE);
    //    var_dump($data);
   $res->close();
   $conn->close();

?>