<?php
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);
$filepath = realpath(dirname(__FILE__));
include_once ($filepath.'/../lib/database.php');
$db = new Database();
?>


<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/category.php';  ?>
<?php include '../classes/brand.php';  ?>
<?php include '../classes/product.php';  ?>
<?php include '../classes/warehose.php';  ?>
<?php
    echo '<div class="grid_10">
            <div class="box round first grid">
                <h2 style="font-weight: 600">Nhập sản phẩm</h2>      
                <div class="block copyblock"> ';

    echo '<form method="POST" action="warehouseadd.php" class="form" style="margin-bottom: 20px; display: flex; flex-direction: column">
    <h3>Nhập mã sản phẩm </h3>
    <input name="product_code" style="width: 98%;display: block; margin: 20px 0;">
    <button type="submit" name="submit">Tìm kiếm sản phẩm</button>
</form>';

    $pd = new product();
    if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])){
        if (isset($_POST['product_code'])) {
            $product_code = $_POST['product_code'];
            echo "<h3>Mã sản phẩm:  $product_code</h3>";

            $query = "SELECT * FROM tbl_product where product_code = '$product_code' ";
            $result = $db->select($query);
            if (!$result) {
                echo '<h3>Không tìm thấy sản phẩm</h3>';
            } else {
                $result = $result->fetch_assoc();
                echo "<ul>
                        <li>Tên sản phẩm: ". $result['productName'] ."</li>
                        <li>Số lượng: ". $result['productQuantity'] ."</li>
                        <li>Số lượng Đã bán: ". $result['product_soldout'] ."</li>
                        <li>Số lượng còn lại: ". $result['product_remain'] ."</li>
                        <li>Đơn giá: ". number_format($result['price']) ." đ</li>
                    </ul>";

                echo "<form method='post' action='warehouseadd.php' class='form' style='display: flex; flex-direction: column'>
                        <h3>Số lượng sản phẩm nhập</h3>
                        <input name='add' style='margin:20px 0'>
                        <input name='productId' hidden value='" . $result['productId'] . "' >
                        <input name='productQuantity' hidden value='" . $result['productQuantity'] . "'>
                        <input name='product_remain' hidden value='" . $result['product_remain'] . "'>
                        <button type='submit' name='submit'>Thêm</button>
                      </form>";
            }


        } else {
            //else  tang so luong san pham
            $add = $_POST['add'];
            $id = $_POST['productId'];
            $quantity = $_POST['productQuantity'] + $add;
            $remain = $_POST['product_remain'] + $add;

            $ware = new Warehose();
            $ware->pushProduct($id, $add, $quantity, $remain);

            echo '<h2>Nhập  sản phẩm thành công </h2>';
        }
    }


echo "</div></div></div>";








    ?>


