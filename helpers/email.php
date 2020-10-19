<?php
ini_set('display_startup_errors', 1);
ini_set('display_errors', 1);
error_reporting(-1);

$from = base64_decode('bGV0aWV1OEBnbWFpbC5jb20=');
$pass = base64_decode('aHV5ZW50cmFuZzI3Mg==');

$filepath = realpath(dirname(__FILE__));
$user_id = $_SESSION['customer_id'];
$database = new Database();

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

require ($filepath . '/mailer/src/PHPMailer.php');
require ($filepath . '/mailer/src/Exception.php');
require ($filepath . '/mailer/src/SMTP.php');

$mail = new PHPMailer(true);
$mail->CharSet = "UTF-8";

// =============================  Tổng số tiền  ==============================
$amount = 0;

// =============================  Đọc thông tin user ==================================
$query = "select * $from tbl_customer where id='$user_id'";
$result = $database->select($query);
$user = $result->fetch_assoc();
$productIds = [];

// =============================  Đọc thông tin đơn hàng ==============================
$query = "select * $from tbl_order where customer_id='$user_id' and send_mail='0'";
$result = $database->select($query);

// =============================  Nội dung biên lai ==============================
$body = "
<h2 style='font-weight:600; text-align:center'>HÓA ĐƠN MUA HÀNG </h2>
<h3 style='text-align:center'> Ngày: " . date("d-m-Y") . " </h3>
<br/>
<p style='font-weight:600'>Đơn vị kinh doanh: Công ty TMDT Bizweb</p>
<p>Mã số thuế: 7462xxxx </p>
<p>Số tài khoản: 790272617xxx</p>
<p>Số điện thoại: 09276525xx </p>
<hr>
<p style='font-weight:600'>Email khách hàng: " . $user['email'] . " </p>
<p>Địa chỉ: ". $user['address'] ." </p>
<p>Số điện thoại: " . $user['phone'] . "
<br/>
";

$body =$body . "<table style='width: 80%; border: 2px solid black; margin-top:30px'> <thead><tr><th>Sản phẩm</th> <th>Đơn giá</th> <th>Số lượng</th><th>Thành tiền </th></tr></thead>";

$tbody = "<tbody style='border-top: 1px solid; margin-top: 20px'>";

while ($product = $result->fetch_assoc()) {
    $tr = "<tr style='border-bottom: 1px solid black; line-height: 30px'>";
    $tr = $tr . "<td style='padding:0 20px; border-right:1px solid black'>" . $product['productName'] . "</td>";
    $tr = $tr . "<td style='padding:0 20px; border-right:1px solid black; '>" . number_format($product['price']) . " ₫  </td>";
    $tr = $tr . "<td style='padding:0 20px; border-right:1px solid black'>" . $product['quantity'] . "</td>";
    $tr = $tr . "<td style='padding:0 20px'>" . number_format($product['price'] * $product['quantity']) . " ₫ </td>";
    $tr = $tr . "</tr>";
    $tbody = $tbody . $tr;
    $amount = $amount + $product['price'] * $product['quantity'];
    $productIds[] = $product['productId'];
}

$detail =' <div class="section group" style="margin-top:30px">
            <p class="success_note" style="font-weight:600">Tổng giá trị bạn đã mua: ' . number_format($amount) .' ₫  </p>
            <p class="success_note" style="font-weight:600">Tổng tiền thanh toán: ' . number_format($amount + $amount * 0.1) .' ₫   (VAT:10%)</p>
         
            </div>
     </div>';
     
$tbody = $tbody . "</tbody>";
$body = $body . $tbody . "</table>";
$body = $body . $detail;
// =============================  Kết thúc nội dung biên lai ==============================


sendMail($user['email'], $body, [], 'Hóa đơn thanh toán (Bizweb)'); // gửi biên lai tới email user
sendDetail($user['email'], $productIds); // Gửi thông tin sản phẩm 


// =============== Chuyen trang thai da gui mai =====================  
$query = "UPDATE tbl_order SET send_mail = 1 WHERE customer_id='$user_id'";
$database->update($query);


function sendMail($toMail, $body, $image = [], $title='')
{
    global $from;
    global $pass;
    global $mail;
    try {
        //Server settings
        $mail->isSMTP();                                            // Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
        $mail->Username   = $from;                     // SMTP username
        $mail->Password   = $pass;                               // SMTP password
        $mail->SMTPSecure = 'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged
        $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above

        //Recipients
        $mail->setFrom($from, 'Shop');
        $mail->addAddress($toMail);     // Add a recipient
        $mail->addReplyTo($from, 'Information');

        // Content
        $mail->isHTML(true);                                  // Set email format to HTML
        $mail->Subject = $title;
        $mail->Body    = $body;

        // Hinh anh
        
        if ($image != []) {
            foreach($image as $img) {
                $mail->AddEmbeddedImage("admin/uploads/" . $img, $img);
            }
        }

        $mail->send();
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
}

function sendDetail($toMail, $ids) {
    $pIds = implode(',', $ids);
    global $database;
    $query = "select * from tbl_product where productId in ($pIds)";
    
    $result = $database->select($query);
    $body = '';
    $image = [];

    while ($product = $result->fetch_assoc()) {
        $body = $body . '
    <table class="cont-desc span_1_of_2">	
        <tr>
    <td class="grid images_3_of_2">
        <img src="cid:' . $product["image"] . '" alt="" width="300px" />
    </td>

    <td class="desc span_3_of_2">
    <h2>' . $product['productName'] . '</h2>
    <p> ' . $product['product_desc'] . '</p>					
    <p style="color:red; font-weight:600">Đơn Giá: <span> ' . $product['price'] . '</span></p> 
    </td>
    </tr>
    </table>';
        
        $body = $body . '<hr>';
        
        $image[] = $product['image'];
    }
    
    sendMail($toMail, $body, $image, 'Thông tin sản phẩm');
}

?>
