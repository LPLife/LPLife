<?php
header("Content-Type:text/html;charset=utf8");
$servername = "localhost";
$username = "lupei";
$password = "123456";
$dbname = "project7";
try{
$conn = new PDO("mysql:host=$servername;dbname=$dbname",$username,$password);
}catch(PDOException $e){
	echo $e->getMessage();
}
//获取当前页
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$sql = "select count(*)  from books";
$n = (int)$conn->query($sql)->fetchColumn(0);
$size = 6;//每页数量
$max = ceil($n / $size);
$start = ($page-1) * $size;
$sql = "SELECT * FROM `books` limit $start,$size";
$data = $conn->query($sql)->fetchAll(PDO::FETCH_ASSOC);
$result = array(
    'total' => $n,
    'max' => $max,
    'list' => array()
);
foreach($data as $v){
	$result['list'][] = array(
	 'id' => $v["id"],
	 'title' => $v["title"],
	 'pic' => $v["pic"]
	);
}
echo json_encode($result); 
?>