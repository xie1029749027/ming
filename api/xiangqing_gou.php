<?php  
    include 'conn.php';
    $user = isset($_GET['user']) ? $_GET['user'] : '';//user 用户
    $id = isset($_GET['id']) ? $_GET['id'] : '';  //gid  唯一ID
    $val = isset($_GET['val']) ? $_GET['val'] : ''; //val 数量

    // $user = '17665363201';
    // $id = 'flyxie66';
    // $val = '1';
    //先查询
    $sqlcha = "select * from dingdan where gid = '".$id."' and name = '".$user."'";
    $rescha = $conn->query($sqlcha);
    $unm = mysqli_num_rows($rescha);
    $xinzhi = '';
    if($unm > 0){
        $datacha = $rescha->fetch_all(MYSQLI_ASSOC);
        $zhi = $datacha[0]['qty'];
        $xinzhi = $zhi + $val;
        $sql = "update dingdan set qty = '".$xinzhi."' where gid='".$id."' and name= '".$user."'";
        
    }else if($unm <= 0){
        $sql = "insert into dingdan (name,gid,qty) values ('".$user."','".$id."','".$val."')";
    }

    $res = $conn->query($sql);
    // $data = $res->fetch_all(MYSQLI_ASSOC);

    $arr = array(
        'user'=>$user,
        'id'=>$id,
        'val'=>$val,
        'buer'=>true,
        'xinzhi'=>$xinzhi
        );
    // var_dump($data);
    echo json_encode($arr,JSON_UNESCAPED_UNICODE);

    
    // $res->close();
    $conn->close();
?>