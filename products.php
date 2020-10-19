<?php 
	include 'inc/header.php';
	include 'inc/slider.php';
 ?>	
<?php
	if(isset($_GET['trang'])){
		$get_trang=$_GET['trang'];
	}else{
		$get_trang='';
	}
	if($get_trang == '' || $get_trang == 1){
		$trang1 = 0;
	}else{
		$trang1 =($get_trang*4)-4;
	}
	$con = mysqli_connect($tenmaychu,$tentaikhoan,$pass,$csdl);
	$sql_all="select * from tbl_product limit $trang1,4"; // limit là chọn từ sản phẩm thứ 0, đến sản phẩm thứ 8
	$query_all=mysqli_query($con, $sql_all);
?>
 <div class="main">
    <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>Tất cả sản phẩm</h3>
    		</div>
    		<div class="clear"></div>
    	</div>
	      <div class="section group">
	      	<?php 
	      	$product_featheread = $product->getproduct_featheread();
	      	if($product_featheread){
	      		while ($result = $product_featheread->fetch_assoc()) {
			  ?>
				<?php
					while($dong_all=mysqli_fetch_array($query_all)){
				?>
					<div class="grid_1_of_4 images_1_of_4">
						 <a href="details.php?proid=<?php echo $dong_all['productId'] ?>"><img src="admin/uploads/<?php echo $dong_all['image'] ?>" alt="" /></a>
						 <h2><?php echo $dong_all['productName'] ?></h2>
						 <p><?php echo $fm->textShorten($result['product_desc'], 50) ?></p>
						 <p><span class="price"><?php echo $fm->format_currency($dong_all['price'])." "."VND" ?></span></p>
						 <div class="button"><span><a href="details.php?proid=<?php echo $dong_all['productId'] ?>" class="details">Chi tiết</a></span></div>
					</div>
			</div>
		<?php 
				}
				}
				}
				 ?>

        <h5 style="color:#F00; margin-bottom:20px; float:left; width:100%; display: flex; justify-content: center">
            <?php
            // Phân Trang
            $trang = $_GET['trang'];
            $sql_phantrang = "select * from tbl_product";
            $sql_trang = mysqli_query($con, $sql_phantrang);
            $count = mysqli_num_rows($sql_trang);
            $a = ceil($count / 16); // Chia 8 là hiển thị 8 sp trên mỗi trang //ceil là làm tròn số trang
            for ($b = 1; $b <= $a; $b++) {
                echo '<a class="paginate-item ' . (($b == $trang) ? 'active' : '') . '"' .' href="?trang=' . $b . '">' . '  ' . $b . '  ' . '</a>';
            }
            ?>
        </h5>

    </div>
 </div>
<?php 
	include 'inc/footer.php';
 ?>
