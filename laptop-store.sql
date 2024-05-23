-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 23, 2024 lúc 07:50 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptop-store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(225) NOT NULL,
  `image` char(225) DEFAULT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `name`) VALUES
(1, 'lenovo-1200-300-1200x300.png', 'banner1'),
(2, 'khuyen-mai-laptop-gia-soc.png', 'banner2'),
(3, 'Mac-M1-1200-300-1200x300.png', 'banner3'),
(4, 'acer-1200-300-1200x300.png', 'banner4'),
(5, 'ASUS-KX-1200-300-1200x300.png', 'banner5'),
(6, 'Dell-1200-300-1200x300.png', 'banner6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bannerfooter`
--

CREATE TABLE `bannerfooter` (
  `id` int(225) NOT NULL,
  `image` char(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bannerfooter`
--

INSERT INTO `bannerfooter` (`id`, `image`) VALUES
(1, 'banner-sis-it-576x310.webp'),
(2, 'sis-gaming-576x310.webp'),
(3, 'sis-hp-576x310.webp'),
(4, '\r\nsis-amd-576x310.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cushionbanner`
--

CREATE TABLE `cushionbanner` (
  `id` int(225) NOT NULL,
  `image` char(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cushionbanner`
--

INSERT INTO `cushionbanner` (`id`, `image`) VALUES
(1, 'sticky3.webp'),
(2, 'sticky2.webp'),
(3, 'sticky 1.webp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_libray`
--

CREATE TABLE `image_libray` (
  `id` int(225) NOT NULL,
  `category_id` int(225) NOT NULL,
  `path` char(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `image_libray`
--

INSERT INTO `image_libray` (`id`, `category_id`, `path`) VALUES
(7, 3, '1110(1).jpg'),
(8, 3, '1110(1).jpg'),
(9, 3, '1110(2).jpg'),
(10, 3, '1110(3).jpg'),
(11, 3, '1110(4).jpg'),
(15, 4, 'ds2-1.jpg'),
(17, 4, 'ds2-2.jpg'),
(18, 4, 'ds2-3.jpg'),
(23, 1, 'cc110-1.jpg'),
(25, 1, 'cc110-2.jpg'),
(26, 1, 'cc110-3.jpg'),
(30, 2, 'cc119-1.jpg'),
(31, 2, 'cc119-2.jpg'),
(32, 2, 'cc119-3.jpg'),
(33, 2, 'cc119-4.jpg'),
(34, 2, 'cc119-5.jpg'),
(35, 2, 'cc119-6.jpg'),
(36, 5, 'ds3-1.jpg'),
(37, 5, 'ds3-2.jpg'),
(38, 5, 'ds3-3.jpg'),
(42, 6, 'ds4-1.jpg'),
(43, 6, 'ds4-2.jpg'),
(44, 6, 'ds4-3.jpg'),
(48, 7, 'ds5-1.jpg'),
(49, 7, 'ds5-2.jpg'),
(50, 7, 'ds5-3.jpg'),
(54, 8, 'gamingT1-1.jpg'),
(55, 8, 'gamingT1-2.jpg'),
(56, 8, 'gamingT1-3.jpg'),
(59, 9, 'gmt10-1.jpg'),
(60, 9, 'gmt10-2.jpg'),
(61, 9, 'gmt10-3.jpg'),
(65, 10, 'gmt2-1.jpg'),
(67, 10, 'gmt2-2.jpg'),
(68, 10, 'gmt2-3.jpg'),
(72, 11, 'gmt3-1.jpg'),
(73, 11, 'gmt3-2.jpg'),
(74, 11, 'gmt3-3.jpg'),
(75, 13, 'gmt4-1.jpg'),
(76, 13, 'gmt4-2.jpg'),
(77, 13, 'gmt4-3.jpg'),
(81, 14, 'gmt5-1.jpg'),
(82, 14, 'gmt5-2.jpg'),
(83, 14, 'gmt5-3.jpg'),
(87, 15, 'gmt6-1.jpg'),
(88, 15, 'gmt6-2.jpg'),
(89, 15, 'gmt6-3.jpg'),
(90, 16, 'gmt7-1.jpg'),
(91, 16, 'gmt7-2.jpg'),
(92, 16, 'gmt7-3.jpg'),
(95, 17, 'gmt8-1.jpg'),
(96, 17, 'gmt8-2.jpg'),
(97, 17, 'gmt8-3.jpg'),
(100, 18, 'gmt8-1.jpg'),
(101, 18, 'gmt8-1.jpg'),
(102, 18, 'gmt8-3.jpg'),
(112, 2, 'cc119-1.jpg'),
(113, 2, 'cc119-2.jpg'),
(114, 2, 'cc119-3.jpg'),
(115, 2, 'cc119-4.jpg'),
(116, 2, 'cc119-5.jpg'),
(117, 2, 'cc119-6.jpg'),
(118, 12, 'cc111-1.jpg'),
(119, 12, 'cc111-2.jpg'),
(120, 12, 'cc111-3.jpg'),
(121, 12, 'cc111-4.jpg'),
(122, 12, 'cc111-5.jpg'),
(123, 12, 'cc111-6.jpg'),
(124, 19, 'cc112-1.jpg'),
(125, 19, 'cc112-2.jpg'),
(126, 19, 'cc112-3.jpg'),
(130, 20, 'cc113-1.jpg'),
(131, 20, 'cc113-2.jpg'),
(132, 20, 'cc113-3.jpg'),
(133, 20, 'cc113-4.jpg'),
(134, 20, 'cc113-5.jpg'),
(135, 20, 'cc113-6.jpg'),
(136, 21, 'cc114-1.jpg'),
(137, 21, 'cc114-2.jpg'),
(138, 21, 'cc114-3.jpg'),
(139, 21, 'cc114-4.jpg'),
(140, 21, 'cc114-5.jpg'),
(141, 21, 'cc114-6.jpg'),
(142, 22, 'cc115-1.jpg'),
(143, 22, 'cc115-2.jpg'),
(144, 22, 'cc115-3.jpg'),
(145, 22, 'cc115-4.jpg'),
(146, 22, 'cc115-5.jpg'),
(147, 22, 'cc115-6.jpg'),
(148, 23, 'cc116-1.jpg'),
(149, 23, 'cc116-2.jpg'),
(150, 23, 'cc116-3.jpg'),
(151, 23, 'cc116-4.jpg'),
(152, 23, 'cc116-5.jpg'),
(153, 23, 'cc116-6.jpg'),
(154, 24, 'cc117-1.jpg'),
(155, 24, 'cc117-2.jpg'),
(156, 24, 'cc117-3.jpg'),
(157, 24, 'cc117-4.jpg'),
(158, 24, 'cc117-5.jpg'),
(159, 24, 'cc117-6.jpg'),
(160, 25, 'cc118-1.jpg'),
(161, 25, 'cc118-2.jpg'),
(162, 25, 'cc118-3.jpg'),
(163, 25, 'cc118-4.jpg'),
(164, 25, 'cc118-5.jpg'),
(165, 25, 'cc118-6.jpg'),
(166, 26, 'macbook001-1.jpg'),
(168, 26, 'macbook001-2.jpg'),
(169, 26, 'macbook001-3.jpg'),
(173, 27, 'macbook002-1.jpg'),
(174, 27, 'macbook002-2.jpg'),
(175, 27, 'macbook002-3.jpg'),
(179, 28, 'macbook003-1.jpg'),
(180, 28, 'macbook003-2.jpg'),
(181, 28, 'macbook003-3.jpg'),
(185, 29, 'macbook004-1.jpg'),
(186, 29, 'macbook004-2.jpg'),
(187, 29, 'macbook004-3.jpg'),
(188, 29, 'macbook004-4.jpg'),
(189, 29, 'macbook004-5.jpg'),
(190, 29, 'macbook004-6.jpg'),
(191, 30, 'macbook001-1.jpg'),
(192, 30, 'macbook001-2.jpg'),
(193, 30, 'macbook001-3.jpg'),
(197, 31, 'macbook004-1.jpg'),
(198, 31, 'macbook004-2.jpg'),
(199, 31, 'macbook004-3.jpg'),
(203, 32, 'macbook003-1.jpg'),
(204, 32, 'macbook003-2.jpg'),
(205, 32, 'macbook003-3.jpg'),
(206, 32, 'macbook003-4.jpg'),
(207, 32, 'macbook003-5.jpg'),
(208, 32, 'macbook003-6.jpg'),
(209, 33, 'macbook001-1.jpg'),
(210, 33, 'macbook001-2.jpg'),
(211, 33, 'macbook001-3.jpg'),
(212, 33, 'macbook001-4.jpg'),
(213, 33, 'macbook001-5.jpg'),
(214, 33, 'macbook001-6.jpg'),
(215, 34, 'macbook004-1.jpg'),
(216, 34, 'macbook004-2.jpg'),
(217, 34, 'macbook004-3.jpg'),
(221, 35, 'macbook002-1.jpg'),
(222, 35, 'macbook002-2.jpg'),
(223, 35, 'macbook002-3.jpg'),
(224, 35, 'macbook002-4.jpg'),
(225, 35, 'macbook002-5.jpg'),
(226, 35, 'macbook002-6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder`
--

CREATE TABLE `oder` (
  `id` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `address_ct` varchar(225) NOT NULL,
  `total` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oder_detail`
--

CREATE TABLE `oder_detail` (
  `id` int(225) NOT NULL,
  `oder_id` int(225) NOT NULL,
  `product_id` int(225) NOT NULL,
  `quantity` int(225) NOT NULL,
  `price` varchar(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_index`
--

CREATE TABLE `product_index` (
  `id` int(11) NOT NULL,
  `phanloai` varchar(225) DEFAULT NULL,
  `image` char(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ram` varchar(255) NOT NULL,
  `ssd` varchar(255) NOT NULL,
  `giagoc` varchar(255) NOT NULL,
  `phantram` varchar(255) NOT NULL,
  `khuyenmai` int(255) NOT NULL,
  `manhinh` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `card` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `khoiluong` varchar(255) NOT NULL,
  `chatlieu` varchar(255) NOT NULL,
  `hedieuhanh` varchar(255) NOT NULL,
  `thoigianramat` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `path` char(255) NOT NULL,
  `img_cacche` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_index`
--

INSERT INTO `product_index` (`id`, `phanloai`, `image`, `name`, `ram`, `ssd`, `giagoc`, `phantram`, `khuyenmai`, `manhinh`, `cpu`, `card`, `pin`, `khoiluong`, `chatlieu`, `hedieuhanh`, `thoigianramat`, `noidung`, `path`, `img_cacche`) VALUES
(1, 'Laptop cao cấp', 'hp-envy-x360-13-bf0090tu-i7-76b13pa-101122-093057-600x600.jpg', 'HP Envy X360 13 bf0090TU i7 1250U (76B13PA)', '16', '512', '32.990.000', '15', 27990000, '13.3\", 2K, Cảm ứng', 'i7, 1250U, 1.1GHz', 'Intel Iris Xe', '4-cell, 66Wh', '1.34', 'Vỏ kim loại', 'Win 11 Home SL', '2022', 'Laptop HP Envy X360 13 bf0090TU i7 (76B13PA) - một siêu phẩm laptop cao cấp - sang trọng đến từ nhà HP khi sở hữu những thông số kỹ thuật ấn tượng từ cấu hình mạnh mẽ, màn hình sắc nét cho đến ngoại hình tinh tế, độc đáo với thiết kế gập 360 độ linh hoạt,', 'cc110-1.jpg\r\ncc110-2.jpg\r\ncc110-3.jpg\r\ncc110-4.jpg\r\ncc110-5.jpg\r\ncc110-6.jpg', 'cc110-cache.jpg'),
(2, 'Laptop cao cấp', 'asus-zenbook-14-flip-oled-up3404va-i5-kn038w-thumb-600x600.jpg', 'Asus Zenbook 14 Flip OLED UP3404VA i5 1340P (KN038W)', '16', '512', '29.190.000', '13', 25990000, '14\", 2K, 90Hz', 'i5, 1340P, 1.9GHz', 'Intel Iris Xe', '4-cell Li-ion, 75 Wh', '1.5', 'Vỏ kim loại', 'Windows 11 Home SL', '2023', 'Laptop Asus Zenbook 14 Flip OLED UP3404VA i5 1340P (KN038W) mang hiệu năng xử lý mạnh mẽ đến từ bộ vi xử lý Intel thế hệ 13 hoàn toàn mới, những thông số cấu hình ấn tượng của màn hình OLED 14 inch cùng với thiết kế được hoàn thiện tốt, một mẫu laptop cao', 'cc119-1.jpg\r\ncc119-2.jpg\r\ncc119-3.jpg\r\ncc119-4.jpg\r\ncc119-5.jpg\r\ncc119-6.jpg', 'cc119-cache.jpg'),
(3, 'Laptop Sale', 'hp-240-g9-i3-6l1x7pa-thumb.jpg', 'HP 240 G9 i3 1215U (6L1X7PA)', '8', '256', '12.990.000', '30', 8190000, '14\", FullHD', 'i3, 1215, 1.2GHz', 'Intel UHD', '3-cell, 41Wh', '1.14', 'Vỏ nhựa', 'Windows 11 Home SL', '2022', 'Sở hữu ngoại hình thanh lịch, tinh tế, hiệu năng ổn định đáp ứng đa tác vụ cùng mức giá hợp lý là những ưu điểm khiến laptop HP 240 G9 i3 1215U (6L1X7PA) trở thành một mẫu laptop học tập - văn phòng lý tưởng cho sinh viên và dân văn phòng.', '1110(1).jpg\r\n1110(2).jpg\r\n1110(3).jpg\r\n1110(4).jpg\r\n1110(5).jpg\r\n1110(6).jpg', 'hp-1110-gt.jpg'),
(4, 'Laptop Sale', 'lenovo-ideapad-3-15iau7-i3-82rk005lvn.jpg', 'Lenovo Ideapad 3 15IAU7 i3 1215U (82RK005LVN)', '8', '256', '13.800.000', '36', 8990000, '15.6\", Full HD', 'i3, 1215U, 1.2GHz', 'Intel UHD', '45Wh', '1.36', 'Vỏ nhựa', 'Windows 11 Home SL', '2022', 'Laptop Lenovo Ideapad 3 15IAU7 i3 (82RK005LVN) đã trở thành một người bạn đồng hành đắc lực, cùng mình giải quyết mọi vấn đề trong công việc cũng như học tập nhờ hiệu năng mạnh mẽ đến từ bộ vi xử lý Intel thế hệ 12 tân tiến.', 'ds2-1.jpg\r\nds2-2.jpg\r\nds2-3.jpg\r\nds2-4.jpg\r\nds2-5.jpg\r\nds2-6.jpg', 'ds2-cache.jpg'),
(5, 'Laptop Sale', 'asus-vivobook-x515ea-i3-ej3948w-thumb.jpg', ' Asus Vivobook X515EA i3 1115G4 (EJ3948W)', ' 8', '512', '11.290.000', '15', 9990000, '15.6\", Full HD', 'i3, 1115G4, 3GHz', 'Intel UHD', '2-cell, 37Wh', '1.8', 'Vỏ nhựa', 'Windows 11 Home SL', '2022', 'Laptop Asus Vivobook X515EA i3 1115G4 (EJ3948W) là một trong những mẫu laptop học tập - văn phòng đáng để bạn cân nhắc chọn mua nhờ sở hữu lối thiết kế thanh lịch, hiệu năng ổn định và bộ nhớ lưu trữ đủ dùng.', 'ds3-1.jpg\r\nds3-2.jpg\r\nds3-3.jpg\r\nds3-4.jpg\r\nds3-5.jpg\r\nds3-6.jpg', ''),
(6, 'Laptop sale', 'acer-aspire-3-a315-58-589k-i5-nxam0sv008-thumb.jpg', 'Acer Aspire 3 A315 58 589K i5 1135G7 (NX.AM0SV.008)', '8', '256', '25.990.000', '21', 10190000, '15.6\", Full HD', 'i5, 1135G7, 2.4GHz', 'Intel Iris Xe', '2-cell, 36.7Wh', '1.7', 'Vỏ nhựa', 'Windows 11 Home SL', '2021', 'Laptop Acer Aspire 3 A315 58 589K i5 1135G7 (NX.AM0SV.008) thuộc dòng laptop học tập - văn phòng tầm trung được Acer giới thiệu tới người dùng với thông số cấu hình ổn định, ngoại hình ưa nhìn và đặc biệt có mức giá phải chăng.', 'ds4-1.jpg\r\nds4-2.jpg\r\nds4-3.jpg\r\nds4-4.jpg\r\nds4-5.jpg\r\nds4-6.jpg', 'ds4-cache.jpg\r\n'),
(7, 'Laptop Sale', 'dell-inspiron-i3.jpg', 'Dell Inspiron 15 3520 i3 1215U (71003264)', '8', '512', '13.790.0000', '11', 12990000, '15.6\", Full HD, 120Hz', 'i3, 1215U, 1.2GHz', 'Intel UHD', '3-cell, 41Wh', '1.9', 'Vỏ Nhựa', 'Windows 11 Home SL + Office Home & Student vĩnh viễn', '2022', 'Laptop Dell Inspiron 3520 i3 1215U (71003264) là một sự lựa chọn tuyệt vời cho những người đang tìm kiếm một thiết bị gọn gàng và đa năng. Với sự kết hợp của bộ xử lý Intel thế hệ 12 và tần số quét cao 120 Hz, đây sẽ là chiếc laptop học tập - văn phòng ho', 'ds5-1.jpg\r\nds5-2.jpg\r\nds5-3.jpg\r\nds5-4.jpg\r\nds5-5.jpg\r\nds5-6.jpg', 'ds5-cache.jpg'),
(8, 'Laptop Gaming', 'acer-aspire-5.jpg', 'Acer Aspire 5 Gaming A515 58GM 51LB i5 13420H', '16', '512', '20.990.00', '', 16990000, '15.6\", Full HD', 'i5, 13420H, 2.1GHz', 'RTX 2050 4GB', '3-cell, 50Wh', '1.7', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Mẫu laptop gaming với mức giá tầm trung đến từ thương hiệu Acer vừa được lên kệ tại Thế Giới Di Động, sở hữu hiệu năng mạnh mẽ với con chip Intel Gen 13 dòng H hiệu năng cao, RAM 16 GB, card rời RTX cùng nhiều tính năng hiện đại. Laptop Acer Aspire 5 Gami', 'gamingT1-1.jpg\r\ngamingT1-2.jpg\r\ngamingT1-3.jpg\r\ngamingT1-4.jpg\r\ngamingT1-5.jpg\r\ngamingT1-6.jpg', 'gmt1-cache.jpg'),
(9, 'Laptop Gaming', 'lenovo-loq-gaming.jpg', 'Lenovo LOQ Gaming 15IRH8 i5 13420H (82XV00Q4VN)', '16', '512', '28.990.000', '', 25990000, '15.6\", Full HD, 144Hz', 'i5, 13420H, 2.1GHz', 'RTX 4050 6GB', ' 60 Wh', '2.4 ', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Là một người yêu thích công nghệ, mình phải thốt lên khen ngợi trước sự quyến rũ hoàn hảo của chiếc laptop Lenovo LOQ Gaming 15IRH8 i5 13420H (82XV00Q4VN). Em laptop này đã thổi một luồng gió mới vào thế giới laptop gaming với thiết kế ấn tượng và vẻ ngoà', 'gmt10-1.jpg\r\ngmt10-2.jpg\r\ngmt10-3.jpg\r\ngmt10-4.jpg\r\ngmt10-5.jpg\r\ngmt10-6.jpg', 'gmt10-cache.jpg'),
(10, 'Laptop Gaming', 'acer-aspire-7-gaming.jpg', 'Acer Aspire 7 Gaming A715 43G R8GA R5 5625U', '8', '512', '18.990.000', '', 15990000, '15.6\", Full HD, 144Hz', 'Ryzen 5, 5625U, 2.30 GHz', 'RTX 3050 4GB', '3-cell, 50Wh', '2', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Một chiếc laptop gaming mà mình tin rằng các game thủ có thể dễ dàng bị chinh phục nhờ sở hữu mức giá lý tưởng nhưng lại trang bị những thông số kỹ thuật ấn tượng, em laptop Acer Aspire 7 Gaming A715 43G R8GA R5 (NH.QHDSV.002) hứa hẹn cùng bạn chinh phục ', 'gmt2-1.jpg\r\ngmt2-2.jpg\r\ngmt2-3.jpg\r\ngmt2-4.jpg\r\ngmt2-5.jpg\r\ngmt2-6.jpg', 'gmt2-cache.jpg'),
(11, 'Laptop Gaming', 'asus-tuf-gaming.jpg', 'Asus TUF Gaming F15 FX506HF i5 11400H (HN014W)', '8', '512', '20.490.000', '', 16990000, '15.6\", Full HD, 144Hz', 'i5, 11400H, 2.7GHz', 'RTX 2050 4GB', '3-cell, 48Wh', '2.3', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Với bộ vi xử lý Intel Core i5 dòng H mạnh mẽ và card đồ họa rời NVIDIA GeForce RTX 2050 4 GB, laptop Asus TUF Gaming F15 FX506HF là một trong những lựa chọn tuyệt vời cho các game thủ và những người dùng làm việc đa tác vụ hoặc liên quan đến đồ họa, kỹ th', 'gmt3-1.jpg\r\ngmt3-2.jpg\r\ngmt3-3.jpg\r\n', ''),
(12, 'Laptop cao cấp', 'hp-envy-16-h0205tx-i9-7c0t2pa-thumb-1-600x600.jpg', 'HP Envy 16 h0205TX i9 12900H (7C0T2PA)', '32', '512', '66.000.000', '19', 51990000, '16\", 4K, Cảm ứng', 'i9, 12900H, 2.5GHz', 'Intel Iris Xe', '6-cell Li-ion, 83 Wh', '2.32 ', 'Vỏ kim loại-nhôm', 'Win 11', '2022', 'Laptop HP Envy 16 h0205TX i9 12900H (7C0T2PA) hoàn toàn mới đã được HP tung ra thị trường, nhắm trực tiếp đến người dùng có nhu cầu làm việc về đồ họa nặng cũng như chiến game ở mức cấu hình cao nhờ combo Intel Core i9 thế hệ 12 và card đồ họa rời NVIDIA ', 'cc111-1.jpg\r\ncc111-2.jpg\r\ncc111-3.jpg\r\ncc111-4.jpg\r\ncc111-5.jpg\r\ncc111-6.jpg', 'cc111-cacche.jpg'),
(13, 'Laptop Gaming', 'hp-victus-15.jpg', 'HP Gaming VICTUS 15 fa1139TX i5 12450H', '16', '512', '24.590.000', '', 18990000, '15.6\", Full HD, 144Hz', 'i5, 12450H, 2GHz', 'RTX 2050 4GB', '3-cell, 52.5Wh', '2.29', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Dòng Gaming Victus là một mẫu laptop gaming độc đáo từ thiết kế đến hiệu năng của nhà HP. Chỉ với một mức giá tầm trung là bạn có thể sở hữu ngay chiếc laptop HP Gaming VICTUS 15 fa1139TX i5 12450H (8Y6W3PA) có thể cân mượt các tựa game cũng như hỗ trợ là', 'gmt4-1.jpg\r\ngmt4-2.jpg\r\ngmt4-3.jpg\r\ngmt4-4.jpg\r\ngmt4-5.jpg\r\ngmt4-6.jpg', 'gmt4-cache.jpg'),
(14, 'Laptop Gaming', 'lenovo-ideapad-gaming.jpg', 'Lenovo Ideapad Gaming 3 15ACH6 R5 5500H', '16', '512', '18.990.00', '', 15990000, '15.6\", Full HD, 144Hz', '15.6\", Full HD, 144Hz', 'RTX 2050 4GB', '45Wh', '2.25', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Một mẫu laptop gaming hot mang mức giá tầm trung và sở hữu những thông số đủ mạnh cho các anh em chiến thoải mái với những con game thịnh hành, phục vụ giải trí hay công việc đầy đủ. Laptop Lenovo Ideapad Gaming 3 15ACH6 R5 5500H (82K2027PVN) chắc chắn sẽ', 'gmt5-1.jpg\r\ngmt5-2.jpg\r\ngmt5-3.jpg\r\ngmt5-4.jpg\r\n', 'gmt5-cache.jpg'),
(15, 'Laptop Gaming', 'msi-gaming-gf63.jpg', 'MSI Gaming GF63 12UCX i5 12450H (841VN)', '8', '512', '17.900.000', '', 15990000, '15.6\", Full HD, 144Hz', 'i5, 12450H, 2GHz', 'RTX 2050 4GB', '3-cell Li-ion, 52.4 Wh', '1.86 ', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Nếu bạn đang tìm kiếm một chiếc laptop gaming với mức giá thành phù hợp, sở hữu cấu hình mạnh mẽ cùng các tính năng hiện đại để vừa sử dụng cho công việc hằng ngày và chiến game, laptop MSI Gaming GF63 12UCX i5 12450H (841VN) sẽ là sự lựa chọn hoàn hảo ch', 'gmt6-1.jpg\r\ngmt6-2.jpg\r\ngmt6-3.jpg\r\n', ''),
(16, 'Laptop Gaming', 'asus-tuf-gaming-f15.jpg', 'Asus TUF Gaming F15 FX507ZC4 i5 12500H', '8', '512', '23.990.000', '', 19990000, '15.6\", Full HD, 144Hz', 'i5, 12500H, 2.5GHz', 'RTX 3050 4GB', '4-cell, 56Wh', '2.2 ', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Một mẫu laptop gaming quen thuộc đến từ nhà Asus, sở hữu hiệu năng vượt trội từ con chip Intel dòng H, card RTX 30 series, nhiều tính năng tân tiến cùng mức giá lý tưởng. Laptop Asus TUF Gaming F15 FX507ZC4 i5 12500H (HN074W) chắc chắn sẽ là sự lựa chọn t', 'gmt7-1.jpg\r\ngmt7-2.jpg\r\ngmt7-3.jpg\r\ngmt7-4.jpg\r\ngmt7-5.jpg\r\n', 'gmt7-cache.jpg'),
(17, 'Laptop Gaming', 'hp-victus-15-fa0155tx.jpg', 'HP Gaming VICTUS 15 fa0155TX i5 12450H (81P00PA)', '16', '512', '27.990.000', '', 21990000, '15.6\", Full HD, 144Hz', 'i5, 12450H, 2GHz', 'RTX 3050 4GB', '4-cell, 70Wh', '2.31', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Laptop HP VICTUS 15 fa0155TX i5 12450H (81P00PA) hứa hẹn mang đến trải nghiệm làm việc và giải trí tuyệt vời nhờ bộ vi xử lý Intel thế hệ 12 mạnh mẽ, card đồ họa NVIDIA RTX 30-series và màn hình 144 Hz siêu mượt mà.', 'gmt8-1.jpg\r\ngmt8-2.jpg\r\ngmt8-3.jpg\r\ngmt8-4.jpg\r\ngmt8-5.jpg\r\n', 'gmt8-cache.jpg'),
(18, 'Laptop Gaming', 'hp-victus-15-fb1022ax.jpg', 'HP Gaming VICTUS 15 fb1022AX R5 7535HS', '16', '512', '25.490.000', '', 19990000, '15.6\", Full HD, 144Hz', 'Ryzen 5, 7535HS, 3.3GHz', 'RTX 2050 4GB', '3-cell, 52.5Wh', '2.29 ', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Phong cách thiết kế tối giản nhưng vẫn toát lên rõ nét khí thế mạnh mẽ của một mẫu máy chiến game thời thượng, laptop HP Gaming VICTUS 15 fb1022AX R5 7535HS (94F19PA) với những sự trang bị về cấu hình vượt trội sẽ cùng bạn chinh chiến trên mọi đấu trường ', 'gmt9-1.jpg\r\ngmt9-2.jpg\r\ngmt9-3.jpg\r\n', ''),
(19, 'Laptop cao cấp', 'asus-zenbook-14-oled-ux3402va-i5-km085w-thumb-1-600x600.jpg', 'Asus Zenbook 14 OLED UX3402VA i5 1340P (KM085W)', '16', '512', '27.990.000', '17', 22790000, '14\", 2K, 90Hz', 'i5, 1340P, 1.9GHz', 'Intel Iris Xe', '4-cell Li-ion, 75 Wh', '1.39 ', 'Vỏ kim loại-Nhôm', 'Windows 11 Home SL', '2023', 'Thêm một mẫu laptop cao cấp nữa được trang bị bộ vi xử lý Intel thế hệ 13 được lên kệ tại Thế Giới Di Động, đó là laptop Asus Zenbook 14 OLED UX3402VA i5 (KM085W) với thiết kế trẻ trung cùng những thông số ấn tượng.', 'cc112-1.jpg\r\ncc112-2.jpg\r\ncc112-3.jpg\r\ncc112-4.jpg\r\ncc112-5.jpg\r\ncc112-6.jpg', 'cc112-cacche.jpg'),
(20, 'Laptop cao cấp', 'acer-swift-3-sf314-512-56qn-i5-nxk0fsv002-ab-thumb-600x600.jpg', 'Acer Swift 3 SF314 512 56QN i5 1240P (NX.K0FSV.002)', '16', '512', '23.990.000', '22', 18790000, '14\", 2K', ' i5, 1240P, 1.7GHz', 'Intel Iris Xe', '3-cell, 56Wh', '1.2 ', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Laptop Acer Swift 3 SF314 512 56QN i5 (NX.K0FSV.002) là một tân binh đáng gờm trong phân khúc laptop học tập - văn phòng khi sở hữu sức mạnh vượt trội đến từ con chip Intel Gen 12 tân tiến cùng ngoại hình mang phong cách tối giản, hiện đại.', 'cc113-1.jpg\r\ncc113-2.jpg\r\ncc113-3.jpg\r\ncc113-4.jpg\r\ncc113-5.jpg\r\ncc113-6.jpg\r\n', 'cc113-cache.jpg'),
(21, 'Laptop cao cấp', 'lenovo-yoga-7-14irl8-i7-82yl006bvn-thumb-600x600.jpg', 'Lenovo Yoga 7 14IRL8 i7 1360P (82YL006BVN)', '16', '512', '28.890.000', '14', 23790000, '14\", Full HD, Cảm ứng', 'i7, 1360P, 2.2GHz', 'Intel Iris Xe', '71Wh', '1.49', 'Vỏ kim loại', 'Windows 11 Home SL + Office Home & Student vĩnh viễn', '2023', 'Dòng laptop Yoga từ nhà Lenovo luôn nổi tiếng với thiết kế mỏng nhẹ, kiểu dáng thanh lịch, sang trọng, tính năng xoay gập và cảm ứng độc đáo mang đến tính tiện lợi trong sử dụng. Laptop Lenovo Yoga 7 14IRL8 i7 1360P (82YL006BVN) được trang bị những tiện í', 'cc114-1.jpg\r\ncc114-2.jpg\r\ncc114-3.jpg\r\ncc114-4.jpg\r\ncc114-5.jpg\r\ncc114-6.jpg', 'cc114-cache.jpg'),
(22, 'Laptop cao cấp', 'dell-inspiron-14-7430-i5-n7430i58w1-221023-102403-600x600.png', 'Dell Inspiron 14 T7430 i5 1335U (N7430I58W1)', '8', '512', '24.000.000', '', 23190000, '14\", Full HD, Cảm ứng', 'i5, 1335U, 1.3GHz', 'Intel Iris Xe', '4-cell, 54Wh', '1.6', 'Vỏ kim loại-Nhôm', 'Windows 11 Home SL', '2023', 'Laptop Dell Inspiron 14 7430 i5 1335U (N7430I58W1) sở hữu hiệu năng vượt trội từ con chip Intel gen 13 hiện đại, tính năng gập mở 360 độ độc đáo, đây sẽ là trợ thủ đắc lực sẵn sàng cùng bạn xử lý mọi tác vụ học tập, văn phòng, giải trí khó nhằn.', 'cc115-1.jpg\r\ncc115-2.jpg\r\ncc115-3.jpg\r\ncc115-4.jpg\r\ncc115-5.jpg\r\ncc115-6.jpg', 'cc115-cache.jpg'),
(23, 'Laptop cao cấp', 'msi-prestige-14-evo-b13m-i5-401vn-130723-111542-600x600.jpg', 'MSI Prestige 14 Evo B13M i5 13500H (401VN)', '16', '512', '26.900.000', '16', 22990000, '14\", Full HD', ' i5, 13500H, 2.6GHz', 'Intel Iris Xe', '4-cell, 72Wh', '1.5', 'Vỏ kimn loại', 'Windows 11 Home SL', '2023', 'Laptop MSI Prestige 14 Evo B13M i5 13500H (401VN) vừa sở hữu lối thiết kế sang trọng, linh hoạt, vừa mang trong mình hiệu năng mạnh mẽ của con chip Intel Gen 13, bộ nhớ RAM 16 GB cùng nhiều tính năng hiện đại đi kèm. Đây chắc chắn là một trong những mẫu l', 'cc116-1.jpg\r\ncc116-2.jpg\r\ncc116-3.jpg\r\ncc116-4.jpg\r\ncc116-5.jpg\r\ncc116-6.jpg', ''),
(24, 'Laptop cao cấp', 'hp-envy-x360-13-bf0112tu-i5-7c0n9pa-glr-thumb-600x600.jpg', 'HP Envy X360 13 bf0112TU i5 1230U (7C0N9PA)', '16', '512', '29.590.000', '16', 23790000, '13.3\", 2K, Cảm ứng', 'i5, 1230U, 1.00 GHz', 'Intel Iris Xe', '4-cell, 66Wh', '1.34 ', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Laptop HP Envy X360 13 bf0112TU i5 1230U (7C0N9PA) là một trong những chiếc laptop cao cấp được yêu thích nhất hiện nay với màn hình cảm ứng mượt mà, tính di động cao cùng hiệu năng mạnh mẽ mang lại những giây phút sáng tạo và giải trí tuyệt vời cho bạn.', 'cc117-1.jpg\r\ncc117-2.jpg\r\ncc117-3.jpg\r\ncc117-4.jpg\r\ncc117-5.jpg\r\ncc117-6.jpg', 'cc117-cache.jpg'),
(25, 'Laptop cao cấp', 'asus-zenbook-14-oled-ux3402za-i5-km218w-291222-050101-600x600.jpg', 'Asus Zenbook 14 OLED UX3402ZA i5 1240P (KM220W)', '8', '512', '25.290.000', '25', 18990000, '14\", 2K, 90Hz', 'i5, 1240P, 1.7GHz', 'Intel Iris Xe', ' 4-cell Li-ion, 75 Wh', '1.39 ', 'Vỏ kim loại', 'Windows 11 Home SL', '2022', 'Laptop Asus Zenbook 14 OLED UX3402ZA i5 (KM218W) sẽ chinh phục mọi người dùng từ sinh viên, dân văn phòng cho đến những doanh nhân kỹ tính. Một chiếc laptop cao cấp - sang trọng đầy mạnh mẽ, sẵn sàng cùng bạn đương đầu mọi khó khăn. ', 'cc118-1.jpg\r\ncc118-2.jpg\r\ncc118-3.jpg\r\ncc118-4.jpg\r\ncc118-5.jpg\r\ncc118-6.jpg', 'cc118-cacche.jpg'),
(26, 'Apple', 'apple-macbook-air-m2-2022.jpg', 'MacBook Air 13 inch M2 2022 8-core GPU', '8', '512', '27.990.000', '', 25990000, '13.6\", Retina', 'Apple M2, 100GB/s', '8 nhân GPU', 'Lên đến 18 giờ', '1.24 ', 'Vỏ kim loại', 'macOS', '2022', 'Sau 14 năm, ba lần sửa đổi và hai kiến trúc bộ vi xử lý khác nhau, kiểu dáng mỏng dần mang tính biểu tượng của MacBook Air đã đi vào lịch sử. Thay vào đó là một chiếc MacBook Air M2 với thiết kế hoàn toàn mới, độ dày không thay đổi tương tự như MacBook Pr', 'macbook001-1.jpg\r\nmacbook001-2.jpg\r\nmacbook001-3.jpg\r\nmacbook001-4.jpg\r\nmacbook001-5.jpg\r\nmacbook001-6.jpg\r\nmacbook001-7.jpg', ''),
(27, 'Apple', 'apple-macbook-pro-13-inch-m2-2022.jpg', 'MacBook Pro 13 inch M2 2022 10-core GPU', '16', '512', '40.190.000', '', 39990000, '13.3\", Retina', 'Apple M2, 100GB/s', '10 nhân GPU', 'Lên đến 20 giờ', '1.4 ', 'Vỏ kim ', 'macOS', '2022', 'Sự đẳng cấp của nhà Apple là điều không thể phủ nhận khi nó luôn có những bước cải tiến nổi bật qua từng năm. Và đến năm 2022, sự xuất hiện của con chip M2 trên MacBook Pro M2 16GB là một dấu ấn mạnh mẽ khẳng định vị thế của \"nhà Táo\" trong phân khúc lapt', 'macbook002-1.jpg\r\nmacbook002-2.jpg\r\nmacbook002-3.jpg\r\nmacbook002-4.jpg\r\nmacbook002-5.jpg\r\nmacbook002-6.jpg\r\nmacbook002-7.jpg', ''),
(28, 'Apple', 'macbook-air-m1-2020.jpg', 'MacBook Air 13 inch M1 2020 7-core GPU', '8', '512', '19.590.000', '', 18990000, '13.3\", Retina', 'Apple M1', '7 nhân GPU', 'Lên đến 18 giờ', '1.29', 'vỏ kim loại nguyên khối', 'macOS', '2020', 'Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.', 'mac003-1.jpg\r\nmac003-2.jpg\r\nmac003-3.jpg\r\nmac003-4.jpg\r\nmac003-5.jpg\r\n', '\r\n\r\n'),
(29, 'Apple', 'apple-macbook-air-15-inch-m2-2023.jpg', 'MacBook Air 15 inch M2 2023 10-core GPU', '8', '512', '32.290.000', '', 29990000, '15.3\", Retina', 'Apple M2, 100GB/s', '10 nhân GPU', 'Lên đến 18 giờ', '1.51 ', 'Vỏ kim loại', 'macOS', '2023', 'MacBook Air 15 inch M2 2023 đã có phiên bản cải tiến vừa được nhà Apple cho ra mắt, thêm không gian cho những điều bạn yêu với màn hình Liquid Retina 15 inch ấn tượng. Với người dùng yêu thích hiệu năng \"nhanh như chớp\" trong một thiết kế siêu gọn nhẹ của', 'mac004-1.jpg\r\nmac004-2.jpg\r\nmac004-3.jpg\r\nmac004-4.jpg\r\nmac004-5.jpg', ''),
(30, 'Apple', 'apple-macbook-air-m2-2022-16gb.jpg', 'MacBook Air 13 inch M2 2022 10-core GPU', '16', '512', '39.090.000', '', 35990000, '13.6\", Retina', 'Apple M2, 100GB/s', '10 nhân GPU', 'Lên đến 18 giờ', '1.24', 'Vỏ kim loại', 'macOS', '2022', 'MacBook Air M2 2022 một lần nữa đã khẳng định vị thế hàng đầu của Apple trong phân khúc laptop cao cấp - sang trọng vào giữa năm 2022 khi sở hữu phong cách thiết kế thời thượng, đẳng cấp cùng sức mạnh bộc phá đến từ bộ vi xử lý Apple M2 mạnh mẽ.', 'macbook001-1.jpg\r\nmacbook001-2.jpg\r\nmacbook001-3.jpg\r\nmacbook001-4.jpg\r\nmacbook001-5.jpg\r\nmacbook001-6.jpg\r\nmacbook001-7.jpg', ''),
(31, 'Apple', 'apple-macbook-air-15-inch-m2-2023-midnight-thumb-600x600.jpg', 'MacBook Air 15 inch M2 2023 10-core GPU', '16', '256', '37.990.000', '', 36990000, '15.3\", Retina', 'Apple M2, 100GB/s', '10 nhân GPU', 'Lên đến 18 gi', '1.51 ', 'Vỏ kim loại', 'macOS', '2023', 'Sự kiện 2023 của nhà Apple với sự ra mắt cùng diện mạo mới của chiếc MacBook Air 15 inch M2 2023 10-core GPU, có không gian trải nghiệm nội dung rộng lớn với màn hình 15 inch. Với những người dùng yêu thích tính gọn nhẹ cũng như sở hữu hiệu năng mạnh của ', 'mac006-1.jpg\r\nmac006-2.jpg\r\nmac006-3.jpg\r\nmac006-4.jpg\r\nmac006-5.jpg\r\nmac006-6.jpg', ''),
(32, 'Apple', 'macbook-air-m1-2020-gold-600x600.jpg', 'MacBook Air 13 inch M1 2020 7-core GPU', '8', '256', '19.590.000', '', 18990000, '13.3\", Retina', 'Apple M1', '7 nhân GP', 'Lên đến 18 giờ', '1.29 ', 'Vỏ kim loại nguyên khối', 'macOS', '2020', 'Laptop Apple MacBook Air M1 2020 thuộc dòng laptop cao cấp sang trọng có cấu hình mạnh mẽ, chinh phục được các tính năng văn phòng lẫn đồ hoạ mà bạn mong muốn, thời lượng pin dài, thiết kế mỏng nhẹ sẽ đáp ứng tốt các nhu cầu làm việc của bạn.', 'mac003-1.jpg\r\nmac003-2.jpg\r\nmac003-3.jpg\r\nmac003-4.jpg\r\nmac003-5.jpg', ''),
(33, 'Apple', 'apple-macbook-air-m2-2022-16gb-256gb-thumb-600x600.jpg', 'MacBook Air 13 inch M2 2022 8-core GPU', '16', '256', '31.990.000', '', 30990000, '13.6\", Retina', 'Apple M2, 100GB/s', '8 nhân GPU', 'Khoảng 10 tiếng', '1.24 ', 'Vỏ kim loại', 'macOS', '2022', 'Với sức mạnh bùng nổ đến từ bộ vi xử lý M2 cùng thiết kế của một chiếc laptop cao cấp - sang trọng, MacBook Air M2 đáp ứng đầy đủ mọi nhu cầu từ học tập, văn phòng đến đồ họa, kỹ thuật nâng cao.\r\nNâng tầm mọi trải nghiệm nhờ sức mạnh bùng nổ đến từ bộ vi ', 'mac001-1.jpg\r\nmac001-2.jpg\r\nmac001-3.jpg\r\nmac001-4.jpg\r\nmac001-5.jpg\r\nmac001-6.jpg\r\nmac001-7.jpg', ''),
(34, 'Apple', 'apple-macbook-air-15-inch-m2-2023-midnight-thumb-1-600x600.jpg', 'MacBook Air 15 inch M2 2023 10-core GPU', '8', '512', '37.990.000', '', 36990000, '15.3\", Retina', 'Apple M2, 100GB/s', '10 nhân GPU', 'Lên đến 18 giờ', '1.51', 'Vỏ kim loại', 'macOS', '2022', 'Sự kiện 2023 của nhà Apple với sự ra mắt cùng diện mạo mới của chiếc MacBook Air 15 inch M2 2023 10-core GPU, có không gian trải nghiệm nội dung rộng lớn với màn hình 15 inch. Với những người dùng yêu thích tính gọn nhẹ cũng như sở hữu hiệu năng mạnh của ', 'mac006-1.jpg\r\nmac006-2.jpg\r\nmac006-3.jpg\r\nmac006-4.jpg\r\nmac006-5.jpg\r\nmac006-6.jpg', ''),
(35, 'Apple', 'apple-macbook-pro-13-inch-m2-2022.jpg', 'MacBook Pro 13 inch M2 2022 10-core GPU', '8', '256', '30.490.000', '', 27990000, '13.3\", Retina', 'Apple M2, 100GB/s', '10 nhân GPU', 'Lên đến 20 giờ', '1.4 ', 'Vỏ kim loại', 'macOS', '2022', 'Sở hữu thiết kế thanh lịch, sang trọng cùng hiệu năng vượt trội đến từ bộ vi xử lý Apple M2 tân tiến, Macbook Pro M2 hứa hẹn sẽ đáp ứng hoàn hảo cho người dùng sáng tạo, phục vụ tốt cho các nhu cầu thiết kế đồ họa nâng cao.', 'macbook002-1.jpg\r\nmacbook002-2.jpg\r\nmacbook002-3.jpg\r\nmacbook002-4.jpg\r\nmacbook002-5.jpg\r\nmacbook002-6.jpg\r\nmacbook002-7.jpg', '0');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bannerfooter`
--
ALTER TABLE `bannerfooter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cushionbanner`
--
ALTER TABLE `cushionbanner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_libray`
--
ALTER TABLE `image_libray`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Dc_category_id` (`category_id`);

--
-- Chỉ mục cho bảng `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oder_detail`
--
ALTER TABLE `oder_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oder_detail_ibfk_1` (`oder_id`),
  ADD KEY `oder_detail_ibfk_2` (`product_id`);

--
-- Chỉ mục cho bảng `product_index`
--
ALTER TABLE `product_index`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `bannerfooter`
--
ALTER TABLE `bannerfooter`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `cushionbanner`
--
ALTER TABLE `cushionbanner`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `image_libray`
--
ALTER TABLE `image_libray`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT cho bảng `oder`
--
ALTER TABLE `oder`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oder_detail`
--
ALTER TABLE `oder_detail`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_index`
--
ALTER TABLE `product_index`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `image_libray`
--
ALTER TABLE `image_libray`
  ADD CONSTRAINT `Dc_category_id` FOREIGN KEY (`category_id`) REFERENCES `product_index` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `oder_detail`
--
ALTER TABLE `oder_detail`
  ADD CONSTRAINT `oder_detail_ibfk_1` FOREIGN KEY (`oder_id`) REFERENCES `oder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oder_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_index` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
