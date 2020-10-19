
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
// gọi class staff
$pd = new Staff();
if(!isset($_GET['id']) || $_GET['id'] == NULL){
    echo "<script> window.location = 'staff.php' </script>";

}else {
    $id = $_GET['id'];
}
if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
    // LẤY DỮ LIỆU TỪ PHƯƠNG THỨC Ở FORM POST
    $res = $pd->update($_POST, $id); // hàm check catName khi submit lên
}
?>
<div class="grid_10">
    <div class="box round first grid">
        <h2>Thay đổi thông tin nhân viên</h2>
        <?php
        if(isset($res)){
            echo $res;
        }
        ?>
        <?php
        $get_product_by_id = $pd->getById($id);
        if($get_product_by_id){
        while ($result_product = $get_product_by_id->fetch_assoc()) {
        # code...

        ?>
        <div class="block">

            <form action="" method="post">
                <table class="form">

                    <tr>
                        <td>
                            <label>Họ và tên</label>
                        </td>
                        <td>
                            <input name="name" value="<?php echo $result_product['name'] ?>" type="text" class="medium" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Số điện thoại</label>
                        </td>
                        <td>
                            <input name="phone" value="<?php echo $result_product['phone'] ?>" type="text" class="medium" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Lương tháng</label>
                        </td>
                        <td>
                            <input name="salary" value="<?php echo $result_product['salary'] ?>" type="number" class="medium" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Vị trí đảm nhiệm</label>
                        </td>
                        <td>
                            <input name="position" value="<?php echo $result_product['position'] ?>" type="text" class="medium" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" name="submit" value="Cập Nhật" />
                        </td>
                    </tr>
                </table>
            </form>
            <?php
            }
            }
            ?>
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
