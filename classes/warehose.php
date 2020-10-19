<?php

$filepath = realpath(dirname(__FILE__));
include_once ($filepath.'/../lib/database.php');
include_once ($filepath.'/../helpers/format.php');
?>

<?php
/**
 *
 */
class Warehose
{
    private $db;
    private $fm;

    public function __construct()
    {
        $this->db = new Database();
        $this->fm = new Format();
    }

    public function pushProduct($productId, $number, $quantity, $remain)
    {
        $query = "UPDATE tbl_product SET productQuantity = $quantity, product_remain = $remain WHERE productId = $productId";
        $this->db->update($query);

        $query = "INSERT INTO tbl_warehouse(id_sanpham, sl_nhap, sl_sau) VALUE('$productId', '$number', '$remain')";
        $this->db->insert($query);
    }

}
