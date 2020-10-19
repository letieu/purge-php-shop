<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/category.php';  ?>
<?php include '../classes/brand.php';  ?> 
<?php include '../classes/product.php';  ?>
<?php include '../classes/staff.php'; ?>
<?php
    
    ini_set('display_startup_errors', 1);
    ini_set('display_errors', 1);
    error_reporting(-1);

    // gọi class Staff 
    $pd = new Staff(); 
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        // TAO NHAN VIEN
        $res = $pd->insert($_POST);
    }
  ?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Thêm nhân viên </h2>
        <?php 
            if(isset($res)){
                echo $res;
            }
         ?>   
        <div class="block">

         <form action="staffadd.php" method="post">
            <table class="form">
               
                <tr>
                    <td>
                        <label>Họ và tên </label>
                    </td>
                    <td>
                        <input name="name" type="text" placeholder="Nhập tên nhân viên ..." class="medium" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Số điện thoại </label>
                    </td>
                    <td>
                        <input name="phone" type="text" placeholder="Nhập số điện thoại " class="medium" />
                    </td>
                </tr>
                  <tr>
                    <td>
                        <label>Lương tháng </label>
                    </td>
                    <td>
                        <input name="salary" type="number" placeholder="Nhập số lương trả ..." class="medium" />
                    </td>
                </tr>
				<tr>
                    <td>
                        <label>Vị trí </label>
                    </td>
                    <td>
                        <input name="position" type="text" placeholder="Nhập vị trị đảm nhiệm..." class="medium" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" name="submit" Value="Thêm" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
    </div>
</div>
<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>


