-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2024 lúc 05:51 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_mvc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `avatar`, `description`, `status`, `created_at`, `updated_at`) VALUES
(25, 'Bánh Kem', '1704986572-banhkem.png', '<p>Loại b&aacute;nh th&ocirc;ng dụng thường để tổ chức tiệc, sinh nhật</p>\r\n', 1, '2024-01-11 15:22:52', '2024-01-11 22:22:52'),
(26, 'Bánh Mì', '1704986651-banhmidanhmuc.png', '<p>Loại b&aacute;nh thường d&ugrave;ng ăn s&aacute;ng hoặc ăn k&egrave;m</p>\r\n', 1, '2024-01-11 15:24:11', '2024-01-11 22:24:11'),
(27, 'Tráng Miệng', '1704986721-trangmiengdanhmuc.png', '<p>Thường được d&ugrave;ng sau bữa ch&iacute;nh để tr&aacute;ng miệng</p>\r\n', 1, '2024-01-11 15:25:21', '2024-01-11 22:25:21'),
(28, 'Bánh Khô', '1704986782-banhkhodanhmuc.png', '<p>Loại b&aacute;nh c&oacute; vỏ bọc thường để được l&acirc;u</p>\r\n', 1, '2024-01-11 15:26:22', '2024-01-11 22:26:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introduces`
--

CREATE TABLE `introduces` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `introduces`
--

INSERT INTO `introduces` (`id`, `title`, `summary`, `avatar`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'DOLA-BAKERY LÀ GÌ?', 'Dola Bakery là một tiệm bánh nằm ẩn mình giữa phố xá nhộn nhịp của thành phố. Với bề dày hơn 10 năm kinh nghiệm trong lĩnh vực làm bánh.', '1704985688-introduce-logo.png', '<p>Dola Bakery đ&atilde; nhanh ch&oacute;ng trở th&agrave;nh điểm đến l&yacute; tưởng cho những ai đam m&ecirc; b&aacute;nh ngọt v&agrave; muốn thưởng thức những m&oacute;n đặc sản tại địa phương.</p>\r\n\r\n<p>Tiệm b&aacute;nh nổi tiếng n&agrave;y tự h&agrave;o sở hữu một đội ngũ nh&acirc;n vi&ecirc;n tận t&acirc;m v&agrave; gi&agrave;u kinh nghiệm. Họ kh&ocirc;ng chỉ đảm bảo mang đến cho kh&aacute;ch h&agrave;ng những m&oacute;n b&aacute;nh được l&agrave;m tinh tế với sự tỉ mỉ v&agrave; t&igrave;nh y&ecirc;u, m&agrave; c&ograve;n lu&ocirc;n sẵn l&ograve;ng lắng nghe v&agrave; đ&aacute;p ứng mọi nhu cầu đặc biệt của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Sự phong ph&uacute; v&agrave; đa dạng của thực đơn tại Dola Bakery l&agrave; một điểm nhấn đ&aacute;ng ch&uacute; &yacute;. Kh&aacute;ch h&agrave;ng c&oacute; thể chọn từ một loạt c&aacute;c loại b&aacute;nh tươi ngon như b&aacute;nh mousse, b&aacute;nh su kem, b&aacute;nh tart, b&aacute;nh gạo, b&aacute;nh tiramisu, b&aacute;nh ph&ocirc; mai, b&aacute;nh cookie v&agrave; nhiều loại b&aacute;nh kh&aacute;c nữa. Mỗi m&oacute;n b&aacute;nh đều được chế biến từ những nguy&ecirc;n liệu tươi ngon nhất v&agrave; được trang tr&iacute; tỉ mỉ, mang lại một trải nghiệm thưởng thức thật tuyệt vời.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ chăm ch&uacute;t v&agrave;o hương vị, Dola Bakery cũng đặc biệt quan t&acirc;m đến việc thể hiện sự s&aacute;ng tạo v&agrave; độc đ&aacute;o trong từng chi tiết tr&ecirc;n c&aacute;c m&oacute;n b&aacute;nh của m&igrave;nh. Bạn c&oacute; thể t&igrave;m thấy những chiếc b&aacute;nh được trang tr&iacute; tinh tế với h&igrave;nh d&aacute;ng, m&agrave;u sắc v&agrave; hoa văn độc đ&aacute;o. Những điểm nhấn n&agrave;y kh&ocirc;ng chỉ l&agrave;m cho b&aacute;nh th&ecirc;m đẹp mắt m&agrave; c&ograve;n tạo n&ecirc;n một phong c&aacute;ch ri&ecirc;ng biệt cho Dola Bakery.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng đ&atilde; trở th&agrave;nh fan h&acirc;m mộ của Dola Bakery kh&ocirc;ng chỉ v&igrave; những m&oacute;n b&aacute;nh ngon m&agrave; c&ograve;n v&igrave; kh&ocirc;ng gian ấm c&uacute;ng v&agrave; thoải m&aacute;i tại tiệm. Với thiết kế sang trọng nhưng cổ điển, Dola Bakery tạo ra một m&ocirc;i trường l&yacute; tưởng để thư gi&atilde;n v&agrave; thưởng thức b&aacute;nh ngọt. Bạn c&oacute; thể ngồi thoải m&aacute;i, thưởng thức một ly c&agrave; ph&ecirc; n&oacute;ng v&agrave; th&uacute;c đẩy hương vị b&aacute;nh ngọt bằng những cuộn giấy nhiệt động mời mọc.</p>\r\n\r\n<p>Dola Bakery kh&ocirc;ng chỉ đ&aacute;ng để tham quan m&agrave; c&ograve;n l&agrave; điểm dừng ch&acirc;n l&iacute; tưởng để t&igrave;m mua những m&oacute;n b&aacute;nh ngon nhất. Cho d&ugrave; bạn muốn tổ chức một bữa tiệc, mua một chiếc b&aacute;nh sinh nhật đặc biệt hay đơn giản l&agrave; muốn thưởng thức một chiếc b&aacute;nh nhỏ đầy m&ecirc; hoặc, Dola Bakery sẽ lu&ocirc;n l&agrave; sự lựa chọn h&agrave;ng đầu của bạn.</p>\r\n\r\n<p>H&atilde;y đến với Dola Bakery v&agrave; h&atilde;y để những m&oacute;n b&aacute;nh tuyệt vời của ch&uacute;ng t&ocirc;i l&agrave;m cho cuộc sống bạn th&ecirc;m ngọt ng&agrave;o</p>\r\n', 1, '2022-06-10 09:28:33', '2024-01-11 22:19:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `map_url` varchar(255) NOT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `maps`
--

INSERT INTO `maps` (`id`, `title`, `hotline`, `fax`, `email`, `summary`, `map_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Đường Nguyên Xá, Bắc Từ Liêm, Hà Nội', '0968696968', '659021', 'digitalworld@gmai.com', 'Đến với chúng tôi để trải nghiệm sản phẩm tốt nhất', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.473685885786!2d105.73331873699033!3d21.053735080594365!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345457e292d5bf%3A0x20ac91c94d74439a!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2hp4buHc', 1, '2021-12-18 06:35:49', '2022-06-10 16:44:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `category_id`, `title`, `summary`, `avatar`, `content`, `status`, `created_at`, `updated_at`) VALUES
(9, 26, 'Donut chỉ từ 8k tại Dola', 'Nhắc đến bánh Donut, dân sành thưởng thức hẳn không còn xa lạ gì với món ăn vặt rất phổ biến ở các nước phương Tây này. Dù có nguồn gốc từ nước Mỹ xa xôi song hiện tại, Donut đã và đang trở thành những món bánh ngọt được yêu thích tại Việt Nam.', '1704990050-product-donut8k.png', '<p>Donut truyền thống c&oacute; h&igrave;nh tr&ograve;n v&agrave; 1 lỗ nhỏ ở giữa. Tuy nhi&ecirc;n ng&agrave;y nay, người ta c&oacute; thể s&aacute;ng tạo ra nhiều kiểu b&aacute;nh Donut rất đặc biệt, nhiều h&igrave;nh th&ugrave; cực k&igrave; đ&aacute;ng y&ecirc;u. B&aacute;nh Donut thường được phủ kem, socola hoặc rất nhiều loại topping m&agrave;u sắc.</p>\r\n\r\n<p>Với hương vị thơm ngon đặc trưng, xốp mềm hấp dẫn, Donut chiếm được cảm t&igrave;nh của kh&ocirc;ng &iacute;t những t&iacute;n đồ hảo ngọt. Muốn thưởng thức ngay một chiếc Donut thơm ngon th&igrave; bạn c&oacute; thể gh&eacute; bất kỳ một cơ sở Dola bất kỳ để mua về với mức gi&aacute; từ 8 - 15k m&agrave; th&ocirc;i!</p>\r\n\r\n<p><img alt=\"‼️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tfe/1.5/16/203c.png\" style=\"height:16px; width:16px\" />Chần chờ g&igrave; m&agrave; kh&ocirc;ng gh&eacute; cửa h&agrave;ng Dola gần nhất hoặc gọi về thưởng thức ngay th&ocirc;i n&agrave;o!</p>\r\n', 1, '2024-01-11 16:20:50', '2024-01-11 23:20:50'),
(10, 25, 'Bánh miếng nhỏ - Lựa chọn hoàn hảo cho các tín đồ “hảo ngọt”', 'Đối với những người thích ăn đồ ngọt nhưng sợ béo thì bánh miếng nhỏ chính là sự lựa chọn hoàn hảo nhất. Các loại bánh miếng nhỏ với rất nhiều loại đa dạng như bánh cupcake, bánh tart chắc chắn sẽ khiến bạn thỏa mãn được cơn thèm đồ ngọt', '1704990303-product-banhmiengnho.png', '<p>Hiện nay, để thỏa m&atilde;n nhu cầu thưởng thức c&aacute;c m&oacute;n ăn ngon của con người m&agrave; c&aacute;c m&oacute;n b&aacute;nh ngọt đ&atilde; được ra đời. Đặc biệt l&agrave; những chiếc b&aacute;nh với thiết kế nhỏ xinh đang dần được kh&aacute;ch h&agrave;ng ưa chuộng kh&ocirc;ng chỉ bởi hương vị thơm ngon m&agrave; c&ograve;n bởi thiết kế đang y&ecirc;u của n&oacute;. C&ugrave;ng điểm qua một số loại&nbsp;<strong>b&aacute;nh miếng nhỏ</strong>&nbsp;đang được ưa chuộng nhất hiện nay:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>B&aacute;nh cupcake:</strong>&nbsp;Đ&acirc;y l&agrave; loại b&aacute;nh kem thu nhỏ&nbsp; kh&ocirc;ng c&oacute; nh&acirc;n hoặc sử dụng nh&acirc;n ngọt, cốt b&aacute;nh thường nhẹ, mềm, vị ngọt tan v&agrave; c&oacute; lớp b&ocirc;ng kem ph&iacute;a tr&ecirc;n. Quy tr&igrave;nh l&agrave;m b&aacute;nh cupcake cũng kh&aacute; đơn giản v&agrave; tương tự với quy tr&igrave;nh l&agrave;m c&aacute;c loại b&aacute;nh nướng kh&aacute;c. Bởi v&igrave; vẻ ngo&agrave;i mắt mắt cũng như được trang tr&iacute; cầu kỳ của m&igrave;nh m&agrave; b&aacute;nh cupcake thường được xuất hiện trong c&aacute;c bữa tiệc lớn. Ngo&agrave;i ra, b&aacute;nh cupcake c&ograve;n được sử dụng như một m&oacute;n tr&aacute;ng miệng trong c&aacute;c bữa ăn h&agrave;ng ng&agrave;y.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>B&aacute;nh tart:&nbsp;</strong>Đ&acirc;y l&agrave; loại b&aacute;nh c&oacute; nguồn gốc từ phương T&acirc;y v&agrave; được sử dụng như một m&oacute;n tr&aacute;ng miệng cao cấp trong c&aacute;c bữa ăn. Thứ khiến b&aacute;nh tart trở n&ecirc;n đặc biệt l&agrave; bởi kiểu d&aacute;ng c&oacute; phần tao nh&atilde; c&ugrave;ng lớp vỏ mỏng v&agrave; phần nh&acirc;n đầy m&agrave;u sắc. Ch&iacute;nh điều n&agrave;y đ&atilde; khiến b&aacute;nh tart trở th&agrave;nh m&oacute;n ăn kh&ocirc;ng thể thiếu trong c&aacute;c buổi tiệc tr&agrave; sang trọng. Ăn chiếc b&aacute;nh mềm mịn ngọt ng&agrave;o c&ugrave;ng ly tr&agrave; chiều ấm n&oacute;ng thực sự đem lại cảm gi&aacute;c thoải m&aacute;i, nhẹ nh&agrave;ng cho người thưởng thức.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>B&aacute;nh cuộn</strong>: B&aacute;nh cuộn l&agrave; loại b&aacute;nh dễ thấy nhất trong c&aacute;c bữa ăn h&agrave;ng ng&agrave;y. Nhờ v&agrave;o hương vị thơm ngon cũng như c&aacute;ch l&agrave;m kh&aacute; đơn giản m&agrave; b&aacute;nh cuộn đ&atilde; trở th&agrave;nh m&oacute;n ăn được rất nhiều người ưa chuộng. Một số nh&acirc;n b&aacute;nh cuộn thường thấy c&oacute; thể kể đến như: b&aacute;nh cuộn mứt d&acirc;u, b&aacute;nh cuộn tr&agrave; xanh, b&aacute;nh cuộn kem trứng,...Từng khoanh b&aacute;nh xốp mịn, mềm mại, th&ecirc;m ch&uacute;t thơm ngậy của kem tươi, hứa hẹn một m&oacute;n b&aacute;nh tuyệt vời cho những bữa tiệc ngọt hay những buổi picnic cuối tuần.</p>\r\n	</li>\r\n</ul>\r\n', 1, '2024-01-11 16:25:03', '2024-01-11 23:26:45'),
(11, 28, 'Khám phá menu bánh quy khô thơm ngon, dinh dưỡng tại Dola', 'Bánh quy khô là món ăn thơm ngon, bổ dưỡng, được nhiều người tiêu dùng ưa thích lựa chọn. Không giống những loại bánh khác, bánh quy đặc biệt với hương vị ngọt ngào, béo ngậy, mang đến cảm giác ngon miệng khó cưỡng', '1704990529-product-banhquykho.png', '<p><strong>B&aacute;nh quy kh&ocirc;</strong>&nbsp;l&agrave; m&oacute;n ăn hấp dẫn v&agrave; mang đến nhiều lợi &iacute;ch cho sức khỏe con người. H&atilde;y c&ugrave;ng điểm qua một số lợi &iacute;ch dưới đ&acirc;y nh&eacute;!</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Cung cấp năng lượng: Trung b&igrave;nh, trong 100g b&aacute;nh quy c&oacute; thể cung cấp khoảng 500Kcal, gi&uacute;p tăng cường hoạt động sống cho cơ thể của bạn.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Hỗ trợ ph&aacute;t triển xương: Nhiều nghi&ecirc;n cứu đ&atilde; chỉ rằng, trong b&aacute;nh quy c&oacute; h&agrave;m lượng lớn canxi, gi&uacute;p hỗ trợ ph&aacute;t triển xương to&agrave;n diện. Mặt kh&aacute;c, cũng g&oacute;p phần hạn chế tối đa t&igrave;nh trạng ti&ecirc;u cực cho xương của bạn.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Ph&aacute;t triển tr&iacute; tuệ: Trong b&aacute;nh quy chứa sắt. Th&agrave;nh phần n&agrave;y c&oacute; vai tr&ograve; quan trọng trong hỗ trợ v&agrave; ph&aacute;t triển tr&iacute; tuệ.&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p>Ổn định đường ti&ecirc;u h&oacute;a: Với một số loại b&aacute;nh quy nhất định, c&oacute; chứa lượng lớn chất xơ tốt, gi&uacute;p ổn định đường ti&ecirc;u h&oacute;a v&agrave; tạo điều kiện cho cơ thể ph&aacute;t triển b&igrave;nh thường.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>Ngo&agrave;i những lợi &iacute;ch kể tr&ecirc;n,&nbsp;<strong>b&aacute;nh quy kh&ocirc;&nbsp;</strong>cũng c&oacute; thể gi&uacute;p t&acirc;m trạng của con người được xoa dịu. Kết hợp sử dụng b&aacute;nh quy với ly tr&agrave; thanh m&aacute;t l&agrave; &yacute; tưởng hay để ch&uacute;ng ta c&oacute; thể thư th&aacute;i sau ng&agrave;y d&agrave;i l&agrave;m việc mệt mỏi. Tuy nhi&ecirc;n, h&atilde;y ch&uacute; &yacute; đến liều lượng sử dụng. Kh&ocirc;ng n&ecirc;n ăn qu&aacute; nhiều b&aacute;nh quy trong thời gian ngắn, v&igrave; như sẽ g&acirc;y ảnh hưởng nghi&ecirc;m trọng đến sức khỏe của bạn.&nbsp;</p>\r\n', 1, '2024-01-11 16:28:49', '2024-01-11 23:28:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `price_total` int(11) NOT NULL,
  `payment_status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `address`, `mobile`, `email`, `note`, `price_total`, `payment_status`, `created_at`, `updated_at`) VALUES
(69, 0, 'Nguyễn Huy', 'Vĩnh Tường', 869312685, 'huycoi144@gmail.com', '', 126000, 0, '2024-05-15 14:52:01', '2024-05-15 21:52:01'),
(70, 0, 'Nguyễn Huy 1 ', 'Vĩnh Tường', 869312685, 'huycoi144@gmail.com', '', 42000, 0, '2024-05-15 14:52:28', '2024-05-15 21:52:28'),
(71, 0, 'Nguyễn Huy', 'Vĩnh Tường', 869312685, 'huycoi144@gmail.com', '', 99000, 0, '2024-05-15 15:28:14', '2024-05-15 22:28:14'),
(72, 0, 'gdfgdgdg', 'gfdgdg', 1234567890, 'abc@gmail.com', '', 42000, 0, '2024-05-15 16:05:22', '2024-05-15 23:05:22'),
(73, 0, 'gdfgdgdg', 'gfdgdg', 1234567890, 'abc@gmail.com', '', 0, 0, '2024-05-15 16:05:26', '2024-05-15 23:05:26'),
(74, 0, 'Nguyễn Huy 21313', 'Vĩnh Tường', 869312685, 'huycoi144@gmail.com', '', 3500000, 0, '2024-05-15 16:06:35', '2024-05-15 23:06:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quality`, `created_at`, `updated_at`) VALUES
(63, 69, 35, '3', '2024-05-15 14:52:01', '2024-05-15 21:52:01'),
(64, 70, 35, '1', '2024-05-15 14:52:28', '2024-05-15 21:52:28'),
(65, 71, 35, '2', '2024-05-15 15:28:14', '2024-05-15 22:28:14'),
(66, 71, 33, '1', '2024-05-15 15:28:14', '2024-05-15 22:28:14'),
(67, 72, 35, '1', '2024-05-15 16:05:22', '2024-05-15 23:05:22'),
(68, 74, 39, '10', '2024-05-15 16:06:35', '2024-05-15 23:06:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `hot` varchar(255) DEFAULT NULL,
  `status` tinyint(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `slnhap` int(11) NOT NULL,
  `slxuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `title`, `avatar`, `price`, `weight`, `supplier`, `summary`, `content`, `hot`, `status`, `created_at`, `updated_at`, `slnhap`, `slxuat`) VALUES
(33, 28, 'Bánh Mì Nướng Caramen', '1704987058-product-banhkho1.png', 15000, '52g', 'Tràng  An', 'Bánh mì', '<p>Th&agrave;nh phần:&nbsp;Bột m&igrave;, nước, sữa tươi, bơ, đường, đường caramen (9,5%), men, muối, chất ổn định (E516), chất nhũ h&oacute;a (E322i), chất xử l&yacute; bột (E300, E1100i)</p>\r\n\r\n<p>T&uacute;i 52g&nbsp;</p>\r\n\r\n<p>Năng lượng: 385,7 Kcal</p', NULL, 1, '2024-01-11 15:30:58', '2024-05-15 22:28:14', 9, 6),
(34, 28, 'Bánh Mì Nướng Bơ Tỏi', '1704987208-product-banhkho2.png', 20000, '75g', 'Dola-Bakery', 'Bánh Mì ', '<p>Th&agrave;nh phần:&nbsp;Bột m&igrave;, nước, sữa tươi, tỏi,bơ, đường, đường caramen (10,5%), men, muối, chất ổn định (E516), chất nhũ h&oacute;a (E322i), chất xử l&yacute; bột (E300, E1100i)</p>\r\n\r\n<p>T&uacute;i 75g&nbsp;</p>\r\n\r\n<p>Năng lượng: 485,7 Kc', NULL, 1, '2024-01-11 15:33:28', '2024-05-10 19:43:51', 15, 2),
(35, 28, 'Bánh Lady FInger', '1704987287-product-banhkho3.png', 42000, '250g', 'Lady', 'Bánh khô', '<p>Th&agrave;nh phần: Trứng, bột m&igrave;, đường, muối, hương vinilla</p>\r\n', NULL, 1, '2024-01-11 15:34:47', '2024-05-15 23:05:22', 14, 13),
(36, 28, 'Bánh Quy Bơ Mứt Dâu', '1704987353-product-banhkho4.png', 50000, '300g', 'Tràng  An', 'Bánh quy', '<p>Th&agrave;nh phần:&nbsp;Bột mỳ, bơ (30,6%), đường, trứng, mứt d&acirc;u (5,1%).</p>\r\n', NULL, 1, '2024-01-11 15:35:53', '2024-05-10 19:44:13', 20, 3),
(37, 25, 'Bánh Kem Dreamy Lady', '1704987503-product-banhkem1.png', 380000, '200g', 'Lady', 'Bánh Kem', '<p>B&aacute;nh kem tươi cốt b&aacute;nh 3 lớp chiffon caramen, nh&acirc;n kem tươi b&aacute;nh caramen, phủ ganat caramen v&agrave; trang tr&iacute; s&ocirc; c&ocirc; la</p>\r\n', NULL, 1, '2024-01-11 15:38:23', '2024-05-14 10:20:53', 5, 1),
(38, 25, 'Bánh Kem Endless Love', '1704987551-product-banhkem2.png', 400000, '220g', 'Endless', 'Bánh Kem ', '<p>B&aacute;nh kem tươi cốt b&aacute;nh 4 lớp chiffon caramen, nh&acirc;n kem caramen, trang hoa kem tươi</p>\r\n', NULL, 1, '2024-01-11 15:39:11', '2024-05-10 19:44:29', 10, 2),
(39, 25, 'Bánh Kem Princess', '1704987634-product-banhkem3.png', 350000, '180g', 'Endless', 'Bánh Kem Sinh Nhật', '<p>B&aacute;nh kem tươi cốt b&aacute;nh 4 lớp chiffon tr&agrave; b&aacute; tước, nh&acirc;n kem tươi, trang hoa kem tươi</p>\r\n', NULL, 1, '2024-01-11 15:40:34', '2024-05-15 23:06:35', 7, 13),
(40, 26, 'Bánh Mì Hạt Óc Chó Sốt Kem', '1704988065-product-banmi1.png', 30000, '100g', 'Ong Vàng', 'Bánh mì ', '<p>Bột mỳ, đường, bơ, nước, trứng g&agrave;, hạt &oacute;c ch&oacute; (5,3%), muối, men, chất ổn định (E516), chất nhũ h&oacute;a (E322i), chất xử l&yacute; bột (E300, E1100i).</p>\r\n', NULL, 1, '2024-01-11 15:47:45', '2024-05-10 19:44:58', 14, 4),
(41, 26, 'Bánh Donut Socola Dâu', '1704988112-product-banhmi2.png', 15000, '45g', 'Ong Vàng', 'Donut', '<p>Th&agrave;nh phần: Bột mỳ, bơ, sữa bột, đường, trứng g&agrave;, men, muối, nước Trang tr&iacute;: socola, cốm, đường icing</p>\r\n', NULL, 1, '2024-01-11 15:48:32', '2024-05-14 10:19:35', 13, 4),
(42, 26, 'Bánh Mì Nhân Sợi Gà Sốt Teriyaki', '1704988162-product-banhmi3.png', 20000, '60g', 'Pew Pew', 'Bánh Mì Nhân Gà', '<h1>B&aacute;nh M&igrave; Nh&acirc;n Sợi G&agrave; Sốt Teriyaki</h1>\r\n', NULL, 1, '2024-01-11 15:49:22', '2024-05-10 19:45:20', 12, 5),
(43, 26, 'Bánh Danish Nho', '1704988200-product-banhmi4.png', 18000, '50g', 'Danish', 'Bánh Danish', '<p>Thành ph&acirc;̀n:&nbsp;Bột m&igrave;, đường, muối, men , bột sữa, trứng g&agrave;, sữa tươi, bơ anchor, nước, nho kh&ocirc;</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, '2024-01-11 15:50:00', '2024-05-10 19:45:31', 6, 1),
(44, 27, 'Caramen ', '1704988387-product-banhtm1.png', 13000, '20g', 'Caramen Ong Nâu', 'Caramen tráng miệng', '<p>Th&ocirc;ng tin sản ph&acirc;̉m đang được c&acirc;̣p nh&acirc;̣t</p>\r\n', NULL, 1, '2024-01-11 15:52:55', '2024-05-14 10:19:21', 8, 2),
(45, 27, 'Mousse Chanh Leo', '1704988440-product-banhtm2.png', 31000, '50g', 'Mousse VN', 'Mousse', '<p>Thành ph&acirc;̀n: Kem sữa, kem thực vật, đường, ph&ocirc; mai kem, nước, trứng g&agrave;, chanh leo (4,5%), chất tạo đ&ocirc;ng gelatine, bột mỳ.</p>\r\n\r\n<p>Bảo quản; 2-5 đ&ocirc;̣</p>\r\n', NULL, 1, '2024-01-11 15:54:00', '2024-05-10 19:46:01', 20, 5),
(46, 27, 'Bánh Red Velvet', '1704988498-product-banhtm3.png', 58000, '45g', 'Red Velvet', 'Bánh ngọt', '<p>Thành ph&acirc;̀n: Bơ, đường, trứng, bột m&igrave;, bột nở, cacao, ph&ocirc; mai kem, chanh tươi, m&agrave;u thực phẩm</p>\r\n\r\n<p>Bảo quản: 2-5 đ&ocirc;̣</p>\r\n', NULL, 1, '2024-01-11 15:54:58', '2024-05-14 10:19:11', 15, 3),
(47, 25, 'Bánh Tiramisu', '1704988544-product-banhtm4.png', 36000, '90g', 'Tỉamisu', 'Bánh ngọt', '<p>Thành ph&acirc;̀n: Ph&ocirc; mai kem, trứng, bột hạnh nh&acirc;n, c&agrave; ph&ecirc;, rượu Kahlua, bơ, kem tươi, cacao, b&aacute;nh quy, đường, hương vani tổng hợp, chất tạo đ&ocirc;ng gelatin, nước.</p>\r\n\r\n<p>Bảo quản: 2-5 đ&ocirc;̣</p>\r\n', NULL, 1, '2024-01-11 15:55:44', '2024-05-10 19:46:22', 23, 2),
(48, 26, 'Bánh Mì Xúc Xích', '1707230576-product-banhmi5.png', 5000, '50g', 'Tràng An', 'Bánh Mì', '<p>Bột mỳ, dầu thực vật, x&uacute;c x&iacute;ch (10,5%), đường, nước, ruốc heo (6,6%), bơ, h&agrave;nh l&aacute;, muối, men, chất ổn định (E516), chất nhũ h&oacute;a (E322i), chất xử l&yacute; bột (E300, E1100i).</p>\r\n', NULL, 1, '2024-02-06 14:39:44', '2024-05-10 23:34:54', 16, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `component_img` varchar(255) NOT NULL,
  `title_component` varchar(255) NOT NULL,
  `title_detail` varchar(255) NOT NULL,
  `store_img` varchar(255) NOT NULL,
  `status` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `avatar`, `position`, `component_img`, `title_component`, `title_detail`, `store_img`, `status`, `created_at`, `updated_at`) VALUES
(32, '1704984369-1704687816-banner-1.png', 2, '1704984369-banhkep.png', 'Bánh Kếp', 'Bánh kếp là chiếc bánh giòn mỏng, nướng chín vàng, thường được làm từ bột mỳ, đường và bơ. Hương vị ngọt ngào kết hợp với độ giòn tạo nên trải nghiệm ăn ngon đặc biệt.', '1704984369-banhkep.png', 1, '2024-01-11 14:46:09', '2024-01-11 21:56:55'),
(33, '1704984888-1654850193-banner-2.png', 1, '1704984820-banhsukem.png', 'Bánh Su Kem', 'Bánh su kem là một kiệt tác bánh ngọt với vỏ bánh giòn tan và nhân kem mịn màng. Hương vani hoặc sô cô la thơm béo tinh tế, tạo nên trải nghiệm thưởng thức độc đáo.', '1704984820-banhsukem.png', 1, '2024-01-11 14:53:01', '2024-01-11 21:54:48'),
(34, '1704985081-1704983680-1704687816-banner-1.png', 3, '1704985199-banhminuong.png', 'Bánh Mì Nướng', 'Bánh mì nướng là một tác phẩm nướng tinh tế, với vỏ giòn và lòng bánh mềm mại. Mùi thơm bơ nổi bật, làm cho mỗi miếng bánh mì trở thành một phần ngon miệng độc đáo.', '1704985199-banhminuong.png', 1, '2024-01-11 14:58:01', '2024-01-11 22:00:41'),
(35, '1704985130-1654850193-banner-2.png', 4, '1704985130-banhkhac.png', 'Bánh Khác', 'Một số loại bánh ngọt khác nối bật', '1704985130-banhkhac.png', 1, '2024-01-11 14:58:50', '2024-01-11 21:59:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(4, 'admin', '1', '2022-06-01 07:56:40', '2023-06-13 22:03:56'),
(5, 'nguyenlongnhat', '25d55ad283aa400af464c76d713c07ad', '2022-06-10 12:41:58', '2022-06-10 19:41:58'),
(6, 'thao', '25d55ad283aa400af464c76d713c07ad', '2022-06-11 14:20:47', '2022-06-11 21:20:47'),
(7, 'admin13', '25f9e794323b453885f5181f1b624d0b', '2023-06-13 14:58:29', '2023-06-13 21:58:29'),
(9, '3thangban333', 'c4ca4238a0b923820dcc509a6f75849b', '2024-03-12 13:31:31', '2024-03-12 20:31:31'),
(10, 'abc', '202cb962ac59075b964b07152d234b70', '2024-05-10 02:36:55', '2024-05-10 09:36:55');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `introduces`
--
ALTER TABLE `introduces`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `introduces`
--
ALTER TABLE `introduces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
