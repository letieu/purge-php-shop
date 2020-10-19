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

    public function insert($params)
    {
        $name = $params['name'];
        $phone= $params['phone'];
        $salary = $params['salary'];
        $position = $params['position'];
        $query = "INSERT INTO tbl_staff(name, phone, salary, position) VALUES('$name', '$phone', '$salary', '$position')";
        $result = $this->db->insert($query);

        if($result){
            $alert = "<span class='success'>Thêm nhân viên  thành công</span>";
            return $alert;
        }else {
            $alert = "<span class='error'>Thêm nhân viên không thành công</span>";
            return $alert;
        }
    }

    public function update($params, $id)
    {
        $name = $params['name'];
        $phone= $params['phone'];
        $salary = $params['salary'];
        $position = $params['position'];
        $query = "UPDATE tbl_staff SET name='$name',phone='$phone', salary='$salary', position='$position' WHERE id='$id'";
        $result = $this->db->insert($query);

        if($result){
            $alert = "<span class='success'>Chỉnh sửa thành công</span>";
            return $alert;
        }else {
            $alert = "<span class='error'>Chỉnh sửa không thành công</span>";
            return $alert;
        }
    }

    public function getById($id)
    {
        $query = "SELECT * FROM tbl_staff WHERE id='$id'";
        $res = $this->db->select($query);
        return $res;
    }

}