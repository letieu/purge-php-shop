-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 03, 2020 lúc 06:08 AM
-- Phiên bản máy phục vụ: 10.4.13-MariaDB
-- Phiên bản PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `csdl_web_bh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'phu', 'phu@gmail.com', 'phuAdmin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(2, 'admin', 'admin@gmail.com', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(15, 'Ensure'),
(16, 'Vinamilk'),
(17, 'Wincofood'),
(18, 'Vinasoy'),
(19, 'Dutch Lady'),
(21, 'Glucerna'),
(22, 'Light Coffee'),
(23, 'The Kaffeine'),
(25, 'Just Viet'),
(27, 'An Thái Café'),
(29, 'Nestlé'),
(30, 'Yomost'),
(31, 'Hùng Chương'),
(32, 'LOTHAMILK'),
(33, 'Australia\'s Own'),
(34, 'EOM'),
(35, 'Cityshop'),
(36, 'DBC FOOD'),
(37, 'Nàng Khô'),
(38, 'Tâm Đức Thiện'),
(39, 'Snack Enaak Indonesia'),
(40, 'Cái Lân'),
(41, 'Neptune'),
(42, 'Nosafood'),
(43, 'Surf'),
(44, 'Comfort'),
(45, 'Lix'),
(46, 'CP CLASSIC'),
(47, 'PEDIGREE'),
(48, 'SmartHeart'),
(49, 'Hiệp Nông'),
(50, 'FarmersMarket'),
(51, 'Tony Fruit');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 7, '0omn99jipm7namf6srjhj4kva2', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 3, '6deaf01c29.jpg'),
(2, 7, 'up8l6ff347ik19fsoa18qff452', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(3, 7, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n thoáº¡i samsung S10+', '12000000', 1, '6deaf01c29.jpg'),
(4, 8, '9lmppj5kalib60o1s7soiiaqo4', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(8, 6, 'c6o66m1rfnpfhqmdffk77pu083', 'MÃ¡y tÃ­nh Dell A503', '10000000', 1, 'dbb417a309.jpg'),
(9, 8, '3e1a29t1pgb3ock6s8hi8ho2d5', 'Äiá»‡n Thoáº¡i Huawei Pro', '5000000', 1, 'd611667f13.jpg'),
(13, 17, 'grfc2bmmrmga6mn5q7484i87f2', 'á»” Cá»©ng SSD Samsung 860 Evo 250GB Sata III 2.5 inch - HÃ ng Nháº­p Kháº©u', '1099000', 1, '785e8d373d.jpg'),
(14, 19, '39p4lauudimhcb91i8mhna4bf2', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 3, '6d72eb58ae.jpg'),
(18, 18, '3eg83l0tcklmed91e5h8raqsa2', 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', 1000, '32942e9470.jpg'),
(19, 19, 'hlkksgphiqn70b37sjg3u89unu', 'Äá»“ng Há»“ ThÃ´ng Minh Apple Watch Series 4 GPS Aluminum Case With Sport Loop', '9700000', 1, '6d72eb58ae.jpg'),
(24, 27, '4831crqtf3t1rl3v95f8f0k9q4', 'Bột cacao nguyên chất Lacacao Standard từ hạt ca cao 250g - The Kaffeine Coffee', '53760', 1, '14646d69fd.jpg'),
(25, 46, 'ids9erf1jdv99ed5mkkm8en6jo', 'Khô Mực', '120000', 5, '885c029ce8.jpg'),
(26, 28, 'n235t70vto9qoln2268b8fs3sc', 'Cà Phê Sữa Đá Just Viet - Đúng Điệu Gu Việt - Sánh Đậm Tự Nhiên - Hộp 10 gói x 17g', '42000', 1, 'c2c1ef2a02.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(20, 'Sữa Tiệt Trùng Và Sữa Bột'),
(21, 'Đồ uống'),
(22, 'Thực phẩm từ sữa &amp; Đồ lạnh'),
(23, 'Đồ hộp'),
(24, 'Sô cô la, Snack &amp; Kẹo'),
(25, 'Nguyên liệu nấu ăn &amp; làm bánh'),
(27, 'Chăm sóc nhà cửa'),
(29, 'Thức ăn thú cưng'),
(30, 'Trái cây tươi &amp; Rau quả'),
(31, 'Khô');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_compare`
--

INSERT INTO `tbl_compare` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 6, 23, 'Lon sữa bột Ensure Gold Hương Vani 850g', '699000', '9813a02751.png'),
(4, 6, 28, 'Cà Phê Sữa Đá Just Viet - Đúng Điệu Gu Việt - Sánh Đậm Tự Nhiên - Hộp 10 gói x 17g', '42000', 'c2c1ef2a02.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(3, 'Nguyễn Văn A', '123 TP HCM', 'TPHCM', 'hcm', '700000', '0123456789', 'thanhviendangki@gmail.com', '123456'),
(4, 'vÃµ thá»‹ tháº£o nguyÃªn', '149 LÅ©y BÃ¡n BÃ­ch, phÆ°á»ng TÃ¢n Thá»›i HÃ²a, quáº­n TÃ¢n PhÃº, TP.HCM', 'TPHCM', 'hcm', '700000', '522525294', 'hoathuytinh071@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(5, 'Sin', '149 LÃ½ ThÃ¡i Tá»•', 'TPHCM', 'hcm', '700000', '0522525294', 'abc@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(6, 'kien', 'Đh kiên giang', 'dh kien giang', 'hcm', '930000', '123456789', 'kien@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(56, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:54:42'),
(57, 22, 'Apple New For Mysql Server', 3, 4, '240000', '643929ce40.jpg', 1, '2019-07-17 00:56:49'),
(58, 22, 'Apple New For Mysql Server', 3, 5, '300000', '643929ce40.jpg', 1, '2019-07-17 00:57:49'),
(59, 20, 'Router Wifi 4G Huawei 300Mbps B593S-12', 3, 10, '12400000', '49b106217c.jpg', 1, '2019-07-17 01:51:22'),
(61, 25, 'Compo 50 Gói Coffee Mate 3gram', 5, 1, '48837', '74d2f1fecf.jpg', 1, '2020-10-03 09:56:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dvt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `dvt`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(23, 'Lon sữa bột Ensure Gold Hương Vani 850g', '1', '1', '', '0', '1', 20, 15, '<ul>\r\n<li>ENSURE GOLD C&Oacute; CHỨA:</li>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i2.596551c5lWsqoj\">HMB (&beta;-hydroxy-&beta;-methylbutyrat) v&agrave; protein chất lượng cao, hỗ trợ x&acirc;y dựng v&agrave; ph&aacute;t triển khối cơ</li>\r\n<li>28 vitamin v&agrave; kho&aacute;ng chất thiết yếu gi&uacute;p cơ thể khỏe mạnh</li>\r\n<li>Gi&agrave;u Canxi, Phospho v&agrave; Vitamin D gi&uacute;p xương chắc khỏe</li>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.596551c5lWsqoj\">Chất xơ FOS nu&ocirc;i dưỡng vi sinh vật c&oacute; lợi v&agrave; gi&uacute;p hệ ti&ecirc;u h&oacute;a khỏe mạnh</li>\r\n<li>C&aacute;c chất chống oxi &ndash; h&oacute;a (beta caroten, vitamin C, E, kẽm v&agrave; selen) gi&uacute;p bảo vệ cơ thể</li>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i1.596551c5lWsqoj\">Hỗn hợp chất b&eacute;o thực vật gi&agrave;u acid b&eacute;o Omega 3-6-9 tốt cho tim mạch. H&agrave;m lượng acid b&eacute;o no v&agrave; cholesterol thấp c&oacute; lợi cho chế độ ăn l&agrave;nh mạnh</li>\r\n</ul>', 0, '699000', '9813a02751.png'),
(24, 'Thùng 24 chai sữa nước Ensure Vani 237ml', '2', '2', '', '4', '-2', 20, 16, '<ul>\r\n<li>Ensure dạng lỏng l&agrave; sản phẩm dinh dưỡng đầy đủ v&agrave; c&acirc;n đối cho người lớn, hỗ trợ ti&ecirc;u h&oacute;a, th&iacute;ch hợp để thay thế ho&agrave;n to&agrave;n bữa ăn hoặc d&ugrave;ng ăn bổ sung cho người cần cải thiện t&igrave;nh trạng dinh dưỡng, người bệnh cần phục hồi nhanh.</li>\r\n<li>Cung cấp nguồn năng lượng thiết yếu cho người lớn, người ăn uống k&eacute;m, người bệnh hoặc cho người cần phục hồi nhanh.</li>\r\n<li>Sữa cung cấp đến 24 loại vitamin v&agrave; kho&aacute;ng chất cần thiết, gi&uacute;p bồi bổ cơ thể mau ch&oacute;ng.</li>\r\n<li>C&oacute; thể d&ugrave;ng sữa để bổ sung v&agrave;o khẩu phần ăn khi c&oacute; nhu cầu tăng th&ecirc;m về năng lượng v&agrave; chất đạm hoặc để duy tr&igrave; t&igrave;nh trạng dinh dưỡng tốt.</li>\r\n</ul>', 0, '750000', '310b9c3641.png'),
(25, 'Compo 50 Gói Coffee Mate 3gram', '3', '3', '', '7', '-4', 20, 17, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.b1235e2cfkj5Aj\">☕ Nestle l&agrave; một tập đo&agrave;n đa quốc gia của Thụy Sĩ, l&agrave; c&ocirc;ng ty thực phẩm lớn nhất tr&ecirc;n thế giới (về doanh thu). Sản phẩm của Nestle bao gồm thức ăn cho trẻ em, nước đ&oacute;ng chai, ngũ cốc cho bữa s&aacute;ng, cafe v&agrave; tr&agrave;, b&aacute;nh kẹo, sản phẩm từ sữa, kem, thực phẩm đ&ocirc;ng lạnh, thức ăn cho th&uacute; cưng, v&agrave; thức ăn nhẹ. 29 thương hiệu của Nestle c&oacute; doanh số hằng năm l&ecirc;n đến 1.1 tỉ đ&ocirc;, bao gồm Nespresso, Nescafe, Kit Kat, Smarties, Nesquik, Stouffer&rsquo;s, Vittle, Carnation v&agrave; Maggi...☕ Bột kem pha c&agrave; ph&ecirc; Nestle Coffee &ndash; Mate Original l&agrave; bột kem thơm ngon, mang đến hương vị ho&agrave;n hảo giữa kem mịn v&agrave; sự ngọt ng&agrave;o m&agrave; kh&ocirc;ng l&agrave;m biến đổi hoặc giấu đi hương vị cafe.☕ Đ&acirc;y l&agrave; loại bột kem kh&ocirc;ng l&agrave;m từ sữa đầu ti&ecirc;n sớm gi&agrave;nh được vị tr&iacute; l&agrave; loại phổ biến nhất nước Mỹ.☕ Bột kem pha c&agrave; ph&ecirc; Nestle Coffee-Mate, ho&agrave;n hảo cho bất kỳ l&uacute;c n&agrave;o bạn muốn thưởng thức một t&aacute;ch cafe &ecirc;m dịu, mềm mịn như nhung.☕ V&agrave; đặc biệt l&agrave;: 0 gram chất b&eacute;o chuyển h&oacute;a tr&ecirc;n một phần thức uống.☕ Nestle Coffee-Mate, Người bạn ho&agrave;n hảo của c&agrave; ph&ecirc; sẽ chuyển t&aacute;ch cafe của bạn th&agrave;nh hỗn hợp thơm ngon mềm mịn: ✔️ Kh&ocirc;ng sữa, tốt cho người kh&ocirc;ng thể hấp thu lactose trong sữa ✔️ Kh&ocirc;ng gluten ✔️ Kh&ocirc;ng Cholesterol ✔️ H&agrave;m lượng calo thấp (15 Calories trong 1 g&oacute;i 3g) ✔️ Kh&ocirc;ng cần bảo quản trong tủ lạnh ✔️ C&oacute; chứng nhận Kosher Dairy.☕ Dạng g&oacute;i nhỏ đủ cho 1 t&aacute;ch c&agrave; ph&ecirc;, thuận tiện mang đi du lịch, đi l&agrave;m hoặc để tr&ecirc;n b&agrave;n tiếp kh&aacute;ch.☕ Hướng dẫn sử dụng: pha trực tiếp v&agrave;o thức uống hoặc l&agrave;m b&aacute;nh; - pha với cafe nguy&ecirc;n chất để c&oacute; cafe sữa đ&aacute;. Ko cần d&ugrave;ng whipping, cafe n&oacute;ng cũng kh&ocirc;ng bị v&aacute;ng dầu; - pha với #CrystalLight để c&oacute; tr&agrave; sữa cực thơm v&agrave; m&aacute;t lạnh; - pha với Ca cao để c&oacute; ly ca cao sữa n&oacute;ng thơm lừng; - l&agrave;m kem, sinh tố, l&agrave;m thạch,.. rất thơm ngon ko cần whipping cream, l&agrave;m kem socola cực ngon.☕ Bảo quản: nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.#ngon #Nestle #Coffee #CoffeeMate #bộtkem #CoffeeCreamer #tr&agrave;_sữa #usa #auth #chinhhang</li>\r\n</ul>', 0, '48837', '74d2f1fecf.jpg'),
(26, 'Bột trà xanh sữa 3in1, matcha xuất xứ Nhật Bản, hũ 550g, từ nhà sản xuất Light Coffee', '4', '4', '', '0', '4', 20, 22, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.2cc623411qJ6el\">Matcha Tr&agrave; xanh kết hợp c&ugrave;ng đường, sữa</li>\r\n<li>Sử dụng bột matcha Nhật Bản, kh&ocirc;ng d&ugrave;ng h&agrave;ng tr&ocirc;i nổi kh&ocirc;ng nguồn gốc</li>\r\n<li>Dạng bột mịn v&agrave; đều, tơi xốp, dễ d&agrave;ng khuấy tan v&agrave; kh&ocirc;ng v&oacute;n cục.</li>\r\n<li>Thơm ngon v&agrave; tiện lợi</li>\r\n<li>C&oacute; nhiều t&aacute;c dụng tốt cho sức khỏe</li>\r\n<li>Quy c&aacute;ch: hũ nhựa tiện sử dụng v&agrave; bảo quản, c&oacute; nắp vặn, m&agrave;ng seal ni&ecirc;m phong miệng hũ</li>\r\n<li>Đ&oacute;ng g&oacute;i: song ngữ Việt &ndash; Anh</li>\r\n<li>C&oacute; m&atilde; vạch quản l&yacute; sản phẩm</li>\r\n<li>Ng&agrave;y sản xuất v&agrave; Hạn sử dụng: in tr&ecirc;n bao b&igrave;</li>\r\n</ul>', 0, '149000', '78afc20d02.png'),
(27, 'Bột cacao nguyên chất Lacacao Standard từ hạt ca cao 250g - The Kaffeine Coffee', '5', '5', '', '0', '5', 20, 23, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.324a60e6WpHal2\">LACACAO, nh&atilde;n hiệu của The Kaffeine</li>\r\n<li>H&agrave;m lượng bơ cacao từ 12-16%</li>\r\n<li>Thơm ngon, nguy&ecirc;n chất 100%</li>\r\n<li>D&ograve;ng cacao Bến Tre</li>\r\n<li>D&ugrave;ng pha chế hoặc l&agrave;m b&aacute;nh đều rất ngon</li>\r\n</ul>', 0, '53760', '14646d69fd.jpg'),
(28, 'Cà Phê Sữa Đá Just Viet - Đúng Điệu Gu Việt - Sánh Đậm Tự Nhiên - Hộp 10 gói x 17g', '6', '6', '', '3', '3', 20, 25, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.7fe27603Tf9vPD\">C&Agrave; PH&Ecirc; SỮA Đ&Aacute; JUST VIET Đ&Uacute;NG ĐIỆU GU VIỆT - S&Aacute;NH ĐẬM TỰ NHI&Ecirc;NSự kh&aacute;c biệt của C&agrave; ph&ecirc; Just Việt:✔️ Kh&ocirc;ng tạo vị bằng đậu n&agrave;nh, cho vị ngon đ&uacute;ng điệu✔️Ngọt ng&agrave;o s&aacute;ng đậm kh&oacute; cưỡng từ kem sữa tự nhi&ecirc;n✔️Nồng đậm từ c&agrave; ph&ecirc; sạch 100% Việt Nam</li>\r\n</ul>', 0, '42000', 'c2c1ef2a02.jpg'),
(29, 'Combo 5 Gói Cà Phê Sữa 3 Trong 1 An Thái (5 gói x 18gr) - An Thái Café', '7', '7', '', '0', '7', 21, 27, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.2f8b638583M7eW\">Sản xuất: Việt Nam.</li>\r\n<li>Thương hiệu: AnTh&aacute;iCaf&eacute;</li>\r\n<li>Bảo h&agrave;nh: 18 th&aacute;ng (kể từ ng&agrave;y sản xuất). Th&agrave;nh phần: c&agrave; ph&ecirc; h&ograve;a tan (12%), bột kem, đường tinh luyện.</li>\r\n<li>Tiện tợi, dễ pha, nhanh ch&oacute;ng, chỉ cần 1 g&oacute;i C&agrave; ph&ecirc; sữa v&agrave; 75ml nước s&ocirc;i l&agrave; bạn c&oacute; ngay 1 t&aacute;ch c&agrave; ph&ecirc; sữa thơm ngon. Bạn c&oacute; thể thưởng thức bất cứ l&uacute;c n&agrave;o ngay cả khi đang l&agrave;m việc, học tập hay xem một bộ phim hay hoặc bắt đầu một ng&agrave;y mới đầy năng động.</li>\r\n<li>Với sự kết hợp giữa vị đắng đậm của c&agrave; ph&ecirc;, ngọt b&eacute;o của kem sữa, thơm dịu nhẹ pha đậm m&ugrave;i thơm c&agrave; ph&ecirc; tạo ra 1 t&aacute;ch c&agrave; ph&ecirc; sữa ph&ugrave; hợp với khẩu vị của người Việt Nam.</li>\r\n<li>Được sản xuất trong quy tr&igrave;nh kh&eacute;p k&iacute;n, sản phẩm cũng đạt ti&ecirc;u chuẩn an to&agrave;n thực phẩm, kh&ocirc;ng chứa c&aacute;c h&oacute;a chất độc hại ảnh hưởng đến sức khỏe người ti&ecirc;u d&ugrave;ng.</li>\r\n<li>Ngo&agrave;i ra,thiết kế bao b&igrave; đẹp mắt, sản phẩm th&iacute;ch hợp l&agrave;m qu&agrave; tặng bạn b&egrave; v&agrave; người th&acirc;n v&agrave;o c&aacute;c dịp đặc biệt.</li>\r\n</ul>', 0, '11500', '4a318cd180.jpg'),
(30, 'Bột Kem Nestle Coffee Mate 900gram hàng nhập khẩu Thái Lan', '8', '8', '', '0', '8', 21, 29, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.23fd4fb238hBFT\">Xuất xứ: TH&Aacute;I LAN.</li>\r\n<li>Quy C&aacute;ch đ&oacute;ng g&oacute;i: 900gram.</li>\r\n<li>Hạn sử dụng: 24 th&aacute;ng trước ng&agrave;y HSD(in tr&ecirc;n bao b&igrave; sản phẩm).</li>\r\n<li>1. Cho NESCAF&Eacute; Red Cup &amp; đường theo khẩu vị v&agrave;o ly.</li>\r\n<li>2. Ch&acirc;m nước n&oacute;ng.</li>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i1.23fd4fb238hBFT\">3. Th&ecirc;m 2 đến 3 muỗng (khoảng 6-9 gram) NESTL&Eacute; COFFEE-MATE khi nước c&ograve;n n&oacute;ng. Khuấy đều v&agrave; thưởng thức. C&oacute; thể gia giảm lượng COFFEE-MATE t&ugrave;y th&iacute;ch khi pha, bạn ho&agrave;n to&agrave;n c&oacute; thể tạo ra hương vị c&agrave; ph&ecirc; đậm đ&agrave; y&ecirc;u th&iacute;ch, đ&uacute;ng gu của bạn.</li>\r\n</ul>', 0, '107910', 'e2fb59d35b.jpg'),
(31, 'Thùng 48 hộp sữa chua lên men tự nhiên Yomost bạc hà - việt quất 48x170ml', '9', '9', '', '0', '9', 22, 30, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.307f269ckepBQd\">Yomost l&agrave; sản phẩm kết hợp giữa thức uống từ sữa chua được l&ecirc;n men tự nhi&ecirc;n v&agrave; bổ sung th&ecirc;m nước tr&aacute;i c&acirc;y vị d&acirc;u tự nhi&ecirc;n. Sản phẩm được xử l&yacute; bằng c&ocirc;ng nghệ tiệt tr&ugrave;ng hiện đại, ho&agrave;n to&agrave;n kh&ocirc;ng sử dụng chất bảo quản giữ nguy&ecirc;n được hương vị thơm ngon tự nhi&ecirc;n từ sữa tươi sạch n&ecirc;n rất an to&agrave;n đối với sức khỏe người d&ugrave;ng.</li>\r\n<li>Sản phẩm kh&ocirc;ng chỉ l&agrave; thức uống giải kh&aacute;t m&agrave; c&ograve;n bổ sung c&aacute;c chất cần thiết cho cơ thể, tốt cho hệ ti&ecirc;u h&oacute;a đồng thời cung cấp c&aacute;c chất thiết yếu như protein, canxi v&agrave; vitamin. Sữa chua uống sẽ bổ sung trực tiếp 13 tỉ lợi khuẩn Probiotics cho đường ruột, l&agrave;m ức chế những vi khuẩn c&oacute; hại gi&uacute;p hỗ trợ hệ miễn dịch, tăng sức đề kh&aacute;ng cho cơ thể lu&ocirc;n khỏe mạnh v&agrave; tr&agrave;n đầy sức sống, cho một hệ ti&ecirc;u h&oacute;a khỏe mạnh từ b&ecirc;n trong gi&uacute;p hấp thu tối đa c&aacute;c chất dinh dưỡng</li>\r\n</ul>', 0, '279000', '690e311a0b.png'),
(32, 'THẠCH CHOCOLATE HÙNG CHƯƠNG - 2.2KG', '10', '10', '', '0', '10', 23, 31, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.625699e81bz0sP\">Hương vị: Vị đắng ngọt thoang thoảng của c&agrave; ph&ecirc;</li>\r\n<li>M&agrave;u sắc: M&agrave;u n&acirc;u đen</li>\r\n<li>Tiện dụng: C&oacute; thể sử dụng ngay, kh&ocirc;ng cần nấu lại</li>\r\n<li>An to&agrave;n thực phẩm: Sản phẩm được sản xuất tại nh&agrave; m&aacute;y đạt chứng nhận HACCP v&agrave; ISO 22000.</li>\r\n</ul>', 0, '100000', '3689ff3ca5.jpg'),
(33, 'Sữa chua uống Long Thành Lothamilk 1760ml', '11', '11', '', '0', '11', 22, 32, '<div class=\"html-content pdp-product-highlights\">\r\n<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.670d23816L2iDW\">Sữa chua Lothamilk với c&ocirc;ng thức l&ecirc;n men đặc biệt từ 100% nguy&ecirc;n liệu Sữa B&ograve; Tươi Long Th&agrave;nh kết hợp với nguồn men chuẩn Ch&acirc;u &Acirc;u gi&uacute;p hương vị sữa chua thơm ngon, s&aacute;nh mịn v&ocirc; c&ugrave;ng độc đ&aacute;o. Sữa chua Lothamilk chứa nhiều lợi khuẩn l&ecirc;n men tự nhi&ecirc;n tốt cho hệ ti&ecirc;u h&oacute;a v&agrave; tăng cường miễn dịch. B&ecirc;n cạnh đ&oacute;, Sữa chua Lothamilk với nguồn Sữa B&ograve; tươi Long Th&agrave;nh 20 năm danh tiếng đảm bảo dưỡng chất thơm ngon, kh&ocirc;ng chất bảo quản sẽ l&agrave; một lựa chọn tốt cho gia đ&igrave;nh bạn.</li>\r\n</ul>\r\n</div>\r\n<div class=\"html-content detail-content\">&nbsp;</div>', 0, '80000', 'c99e1a8e96.png'),
(35, '10 HỘP CÁ SỐT CÀ SEA CROWN 155g(DATE 2023)', '13', '13', '', '0', '13', 23, 34, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.16373dcaLNdVaO\">DATE 2023</li>\r\n<li>Th&agrave;nh phần:</li>\r\n<li>C&aacute; MACKEREL : 60.00%</li>\r\n<li>SỐT C&Agrave; TOMATO SAUCE : 27.00%</li>\r\n<li>NƯỚC WATER : 11.70%</li>\r\n<li>MUỐI SALT : 1.00%</li>\r\n<li>CHẤT MONONATRI : 0.30%</li>\r\n<li>Gi&aacute; trị dinh dưỡng: 100g cho116Kcal</li>\r\n<li>Hướng dẫn sử dụng: Ăn ngay, c&oacute; thể l&agrave;m n&oacute;ng lại trước khi d&ugrave;ng hoặc chế biến th&agrave;nh c&aacute;c m&oacute;n ăn kh&aacute;c.</li>\r\n<li>Bảo quản ở nhiệt độ tho&aacute;ng m&aacute;t.</li>\r\n<li>Hạn sử dụng: 36 th&aacute;ng.</li>\r\n</ul>', 0, '180000', '6dd8930e15.jpg'),
(36, 'MIẾN CHUA CAY TRÙNG KHÁNH (thùng 6 hộp)', '14', '14', '', '0', '14', 23, 35, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.7f763f15Ny9h3q\">Miến chua cay Tr&ugrave;ng Kh&aacute;nh MẪU MỚI vạn người m&ecirc; đ&acirc;yyy.</li>\r\n<li>Sợi Miến dai dai c&oacute; hạt lạc ngon ngon</li>\r\n<li>đ&ecirc;m đ&oacute;i đ&oacute;i l&agrave;m cốc th&ecirc;m c&aacute;i x&uacute;c x&iacute;ch thỳ cuộc đời n&agrave;y chẳng c&ograve;n g&igrave; hối hận</li>\r\n<li>Ai chưa thử th&igrave; thử oder 1 th&ugrave;ng 6 hộp về ăn sẽ cảm nhận ngon như thế n&agrave;o?</li>\r\n</ul>', 0, '99000', 'd3de4f712c.jpg'),
(37, 'Thịt heo hầm 170g', '15', '15', '', '0', '15', 23, 36, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.4bbb1445dIylsk\">Hướng dẫn sử dụng: Sản phẩm d&ugrave;ng để ăn ngay hoặc chế biến t&ugrave;y th&iacute;ch, d&ugrave;ng cho mọi đối tượng.</li>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i1.4bbb1445dIylsk\">Hạn sử dụng: 3 năm kể từ ng&agrave;y sản xuất.NSX v&agrave; HSD xem tr&ecirc;n vỏ hộp.Hướng dẫn bảo quản: Giữ nguy&ecirc;n hộp ở nhiệt độ thường, nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, tr&aacute;nh &aacute;nh nắng trực tiếp.</li>\r\n</ul>', 0, '176000', '5174e05e85.jpg'),
(38, '1 Kí Hạt Điều Rang Tỏi Ớt Loại 1 Thơm Ngon Hấp Dẫn (điều nguyên) Nàng Khô - 2 Hộp 500GR', '16', '16', '', '0', '16', 24, 37, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.3de973eayxhvPu\">1 K&iacute; Hạt Điều Rang Tỏi Ớt Loại 1 ( điều nguy&ecirc;n ) N&agrave;ng Kh&ocirc; - 2 Hộp 500GR</li>\r\n<li>-------------------------------------------------</li>\r\n<li>Hạt Điều Rang Tỏi Ớt N&agrave;ng Kh&ocirc; : M&oacute;n Ngon Tuyệt Vời Của Người Việt V&agrave; L&agrave; Thực Phẩm Tuyệt Vời Của Tự Nhi&ecirc;n Cho Sức Khoẻ</li>\r\n<li>Tốt hơn cho Sức khỏe tim mạch</li>\r\n<li>Giảm nguy cơ ung thư</li>\r\n<li>Ổn định Tiểu đường v&agrave; chuyển h&oacute;a Glucose</li>\r\n<li>Ngăn ngừa Gan nhiễm mỡ</li>\r\n<li>Giảm c&acirc;n v&igrave; kiểm so&aacute;t chứng th&egrave;m ăn</li>\r\n<li>Cải thiện sức khỏe ruột</li>\r\n<li>Tạo nguồn Protein ho&agrave;n chỉnh</li>\r\n<li>Thực phẩm gi&agrave;u dinh dưỡng</li>\r\n<li>Chất chống Oxy h&oacute;a</li>\r\n<li>N&agrave;ng Kh&ocirc; hiện l&agrave; nh&agrave; chế biến thực phẩm h&agrave;ng đầu về c&aacute;c sản phẩm Đậu Hạt Việt Nam:</li>\r\n<li>Sản phẩm đ&atilde; c&oacute; mặt khắp cả nước v&agrave; xuất khẩu</li>\r\n<li>Được chế biến đặc biệt c&oacute; hương vị thơm ngon, lạ miệng của những nguy&ecirc;n liệu tự nhi&ecirc;n được chọn lọc kỹ c&agrave;ng, sẽ mang lại cho Bạn những gi&acirc;y ph&uacute;t thưởng thức thật tuyệt vời b&ecirc;n cạnh Bạn b&egrave; v&agrave; Người th&acirc;n</li>\r\n<li>Gi&agrave;u c&aacute;c th&agrave;nh phần dinh dưỡng c&oacute; lợi cho tim mạch v&agrave; sức khoẻ của Bạn</li>\r\n<li>L&agrave; m&oacute;n ngon th&uacute; vị của người Việt</li>\r\n<li>Đầy đủ Chứng Nhận An To&agrave;n Vệ Sinh Thực Phẩm</li>\r\n<li>Sản phẩm đ&oacute;ng g&oacute;i đẹp, chắc chắn</li>\r\n<li>Ăn chay được</li>\r\n</ul>', 0, '72000', 'c190f1920e.jpg'),
(39, 'Combo 5 Hộp Đậu Hạt: Một Hộp Hạt Điều Rang Tỏi Ớt 170G và Bốn Hộp Đậu[Tùy Chọn Trong 9 Loại] Tâm Đức Thiện - Đồ Ăn Vặt', '17', '17', '', '0', '17', 24, 38, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.4487248cbPbxse\">Giấy Ph&eacute;p Đăng K&yacute; Kinh Doanh- Ng&agrave;nh Nghề Chế Biến Thực Phẩm (Ng&agrave;nh Nghề Kinh Doanh c&oacute; Điều Kiện): 41W8049470 ️</li>\r\n<li>Giấy Chứng Nhận AN TO&Agrave;N VỆ SINH THỰC PHẨM: 62/2018/NNPTNT-BTN</li>\r\n<li>☂️ Hạn Sử Dụng: 3 th&aacute;ng kể từ ng&agrave;y sản xuất v&agrave; Shop lu&ocirc;n c&oacute; h&agrave;ng mới sẵn</li>\r\n<li>Combo gồm 5 hộp Sau: (Chi tiết Sản Phẩm v&agrave; Trọng lượng):</li>\r\n<li>1 Hộp Hạt Điều Rang Tỏi 170GR v&agrave; 4 Hộp Đậu Ngẫu Nhi&ecirc;n Trong 9 Loại Sau:Hộp Đậu Phộng Rang Tỏi Ớt 210GR/Hộp Đậu Phộng M&egrave; Cay 210GR/Hộp Đậu Phộng Sấy Ph&ocirc; Mai 210GR/Hộp Đậu Phộng Da C&aacute; Tỏi Ớt 220GR/Hộp Đậu Phộng Da C&aacute; Ph&ocirc; Mai H&agrave;n Quốc 220GR/Hộp Đậu Phộng Da C&aacute; Nước Cốt Dừa 220GR/Hộp Đậu Phộng Da C&aacute; CaCao 220GR/Hộp H&agrave; Lan Sấy Ph&ocirc; Mai 225GR/Hộp H&agrave; Lan Tỏi Ớt 220GR</li>\r\n<li>Ngoại trừ Hộp Hạt Điều Rang Tỏi, 4 Hộp Đậu C&ograve;n Lại Qu&yacute; Kh&aacute;ch c&oacute; thể t&ugrave;y chọn trong 9 loại đậu tr&ecirc;n&nbsp;theo y&ecirc;u cầu, Xin vui l&ograve;ng sử dụng t&iacute;nh năng Chat với Shop y&ecirc;u cầu Sản Phẩm Chọn Ngay Sau Khi Đặt H&agrave;ng.</li>\r\n</ul>', 0, '111000', '2e300b4302.jpg'),
(40, 'Combo 24 gói Mì ăn liền Enaak', '18', '18', '', '0', '18', 24, 38, '<div class=\"html-content pdp-product-highlights\">\r\n<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.70072f80LetDFV\">Sanck mỳ Enaak _ Mỳ t&ocirc;m ăn sống&nbsp;Xuất xứ: IndonesiaVị G&agrave; cay ngon tuyệt.Sợi m&igrave; gi&ograve;n gi&ograve;n, cay cay ngọt ngọt,Ăn như b&aacute;nh snack....</li>\r\n</ul>\r\n</div>\r\n<div class=\"html-content detail-content\">&nbsp;</div>', 0, '85500', 'd127ff5cda.jpg'),
(41, 'Bình Dầu Ăn Cái Lân 5L - Tặng 2 Gói Hạt Nêm 50GR', '19', '19', '', '0', '19', 25, 40, '<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.285536eaHyKlyT\">Loại dầuDầu thực vật</li>\r\n<li>Dung t&iacute;ch5 l&iacute;t</li>\r\n<li>Th&agrave;nh phầnDầu Olein, dầu đậu n&agrave;nh, Este của polyglycerol với a-x&iacute;t b&eacute;o (475) hoặc sorbitan tristearat (492).</li>\r\n<li>Ưu điểmĐược sản xuất từ nguy&ecirc;n liệu tự nhi&ecirc;n với c&ocirc;ng nghệ tinh chế hiện đại; sự lựa chọn tốt nhất để thay thế việc sử dụng mỡ động vật nhằm bảo vệ sức khỏe cho người ti&ecirc;u d&ugrave;ng.</li>\r\n<li>Th&iacute;ch hợpChi&ecirc;n, x&agrave;o, trộn salad, l&agrave;m sốt</li>\r\n<li>Bảo quảnNơi tho&aacute;ng m&aacute;t, n&ecirc;n d&ugrave;ng trong 1 th&aacute;ng sau khi mở nắp</li>\r\n<li>Thương hiệuAn Long (Việt Nam)</li>\r\n<li>Sản xuất tại Việt Nam</li>\r\n</ul>', 0, '103400', '17d37aec7e.jpg'),
(42, 'Hạt nêm Neptune 380gram vị thịt heo', '20', '20', '', '0', '20', 25, 41, '<div class=\"html-content pdp-product-highlights\">\r\n<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.6b2d5362uIDGUm\">Nguy&ecirc;n liệu tươi ngon gồm thịt heo, xương ống, tủy v&agrave; c&agrave; rốt, ch&iacute;nh l&agrave; b&iacute; quyết l&agrave;m n&ecirc;n vị ngon ngọt tự nhi&ecirc;n của hạt n&ecirc;m 4 trong 1 vị heo Neptune g&oacute;i 380gr. Hạt n&ecirc;m c&oacute; bổ sung canxi, sử dụng h&agrave;ng ng&agrave;y trong bữa ăn gi&uacute;p bổ sung vi chất, tăng cường sức khỏe cho gia đ&igrave;nh bạn.</li>\r\n</ul>\r\n</div>\r\n<div class=\"pdp-mod-specification\">&nbsp;</div>', 0, '12400', '07b091f51c.jpg'),
(44, 'Nước giặt Surf Sương mai dịu mát túi 3.5kg', '22', '22', '', '0', '22', 27, 43, '<div class=\"html-content pdp-product-highlights\">\r\n<ul>\r\n<li data-spm-anchor-id=\"a2o4n.pdp.product_detail.i0.267b42284fXFbF\">Nước giặt với m&ugrave;i hương thơm m&aacute;t gấp 2 lần so với bột giặt- Hương thơm dịu m&aacute;t bền l&acirc;u cho &aacute;o quần, mang đến cảm gi&aacute;c tươi mới, sảng kho&aacute;i m&agrave; kh&ocirc;ng cần x&agrave;i nước xả vải- Tẩy sạch s&acirc;u nhưng nhẹ nh&agrave;ng, &iacute;t hao m&ograve;n sợi vải - Nhẹ nh&agrave;ng với da tay - Gi&aacute; cả phải chăng, x&agrave;i nước giặt m&agrave; gi&aacute; rẻ như bột giặt- Th&iacute;ch hợp cho cả giặt tay v&agrave; giặt m&aacute;y cửa tr&ecirc;n.,H&atilde;y trải nghiệm Surf Nước giặt mới, thơm m&aacute;t gấp 2 lần m&agrave; gi&aacute; vẫn phải chăng so với bột giặt</li>\r\n</ul>\r\n</div>\r\n<div id=\"detail_decorate_root\">&nbsp;</div>', 0, '77400', '5df76f4d1b.jpg'),
(46, 'Khô Mực', '', '500', '', '0', '500', 31, 37, '<p>165564</p>', 1, '120000', '885c029ce8.jpg'),
(49, 'abc', '586', '321', 'Can', '0', '321', 27, 32, '<p>456</p>', 1, '6540000', '5a49b82dae.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`sliderId`, `sliderName`, `slider_image`, `type`) VALUES
(5, 'slider1', '720bc173fa.png', 0),
(6, 'slider2', 'ff79579ac7.png', 0),
(7, 'slider3', 'a94222690e.png', 0),
(8, 'slider4', '5b2e64d6ab.jpg', 1),
(9, 'slider5', 'f50b2e4171.png', 1),
(11, 'slider6', '72a159f760.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40'),
(5, 21, '2', '2020-07-13 23:27:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(6, 6, 28, 'Cà Phê Sữa Đá Just Viet - Đúng Điệu Gu Việt - Sánh Đậm Tự Nhiên - Hộp 10 gói x 17g', '42000', 'c2c1ef2a02.jpg'),
(7, 3, 28, 'Cà Phê Sữa Đá Just Viet - Đúng Điệu Gu Việt - Sánh Đậm Tự Nhiên - Hộp 10 gói x 17g', '42000', 'c2c1ef2a02.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
