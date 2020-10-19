<?php

$filepath = realpath(dirname(__FILE__));
include_once ($filepath.'/../lib/database.php');
include_once ($filepath.'/../helpers/format.php');
?>

<?php
/**
 *
 */
class Staff
{
    private $db;
    private $fm;

    public function __construct()
    {
        $this->db = new Database();
        $this->fm = new Format();
    }

    public function index()
    {
        $query = "SELECT * FROM tbl_staff";
        $res = $this->db->select($query);

        return $res;
    }

    public function delete($id)
    {
        $query = "DELETE FROM tbl_staff where id = '$id' ";
        $this->db->select($query);
    }

}