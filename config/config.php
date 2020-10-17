<?php
define("DB_HOST", 'localhost');
define("DB_USER", 'root');
define("DB_PASS", '12345678');
define("DB_NAME", 'csdl_web_bh');
?>
<?php
	$tenmaychu='localhost';
	$tentaikhoan='root';
	$pass='12345678';
	$csdl='csdl_web_bh';
	$con = mysqli_connect($tenmaychu,$tentaikhoan,$pass,$csdl);
	if(!$con){
		die('Không kết nối được'.mysqli_connect_error());
	}
	//mysqli_select_db($csdl,$conn);
?>