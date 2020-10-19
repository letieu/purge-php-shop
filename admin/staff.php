<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/brand.php';  ?>
<?php include '../classes/staff.php'; ?>
<?php
// gọi class category
$brand = new Staff();
if(!isset($_GET['id']) || $_GET['id'] == NULL){
    // echo "<script> window.location = 'catlist.php' </script>";

}else {
    $id = $_GET['id']; // Lấy catid trên host
    $delbrand = $brand->delete($id); // hàm check delete Name khi submit lên
}
?>

<div class="grid_10">
    <div class="box round first grid">
        <h2>Danh sách thương hiệu</h2>
        <div class="block">
            <?php
            if(isset($delbrand)){
                echo $delbrand;
            }
            ?>
            <table class="data display datatable" id="example">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Họ và tên</th>
                    <th>Điện thoại </th>
                    <th>Lương tháng</th>
                    <th>Chức vụ</th>
                    <th>Thao tác</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $show_brand = $brand->index();
                if($show_brand){
                    $i = 0;
                    while($result = $show_brand -> fetch_assoc()){
                        $i++;

                        ?>
                        <tr class="odd gradeX">
                            <td><?php echo $i; ?></td>
                            <td><?php echo $result['name']; ?></td>
                            <td><?php echo $result['phone']; ?></td>
                            <td><?php echo $result['salary']; ?></td>
                            <td><?php echo $result['position']; ?></td>
                            <td><a href="brandedit.php?brandid=<?php echo $result['brandId']; ?>">Sửa</a> || <a onclick = "return confirm('Bạn có chắc chắn muốn xóa???')" href="?id=<?php echo $result['id'] ?>">Xóa</a></td>
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
