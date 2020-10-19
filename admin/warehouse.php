<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/category.php';  ?>
<?php include '../classes/cart.php';  ?>
<?php include '../classes/brand.php';  ?> 
<?php include '../classes/product.php';  ?>
<?php require_once '../helpers/format.php'; ?>
<?php 
	$pd = new product();
	$fm = new Format();
	if(!isset($_GET['productid']) || $_GET['productid'] == NULL){
        // echo "<script> window.location = 'catlist.php' </script>";
        
    }else {
        $id = $_GET['productid']; // Lấy catid trên host
        $delProduct = $pd -> del_product($id); // hàm check delete Name khi submit lên
    }
 ?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Lich sử nhập hàng</h2>
        <div class="block">  
            <table class="data display datatable" id="example">
			<thead>
				<tr>
					<th>ID</th>
					<th>Code</th>
					<th>Tên sản phẩm</th>

					<th>Số lượng trước nhập</th>
					<th>Số lượng thêm</th>
					<th>Số lượng sau nhập</th>
				    <th>Chi phí</th>
					<th>Ngày nhập</th>
					
				</tr>
			</thead>
			<tbody>
				<?php 
				
				$pdlist = $pd->show_product_warehouse();
				$i = 0;
				
				
					if($pdlist){
					
							while ($result = $pdlist->fetch_assoc()){
								$i++;
									
									
				 ?>
				<tr class="odd gradeX">
					<td><?php echo $i ?></td>
					<td><?php echo $result['product_code'] ?></td>
					<td><?php echo $result['productName'] ?></td>
					
					<td>
						<?php echo ($result['sl_sau'] - $result['sl_nhap']); ?>

					</td>
					<td>
						<?php echo $result['sl_nhap'] ?>

					</td>
					<td>
						<?php echo $result['sl_sau'] ?>

					</td>
                    <td>
                        <?php echo number_format($result['price'] * $result['sl_nhap']); ?> đ
                    </td>
					<td>
						<?php echo $result['sl_ngaynhap'] ?>
					</td>
					
					
				</tr>
				<?php
							
						
					}
				}
				?>
			</tbody>
		</table>

       </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        setupLeftMenu();
        $('.datatable').dataTable();
		setSidebarHeight();
    });
</script>
<?php include 'inc/footer.php';?>
