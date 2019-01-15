-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 14, 2019 lúc 03:22 PM
-- Phiên bản máy phục vụ: 5.7.23
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoantien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dealkhung`
--

DROP TABLE IF EXISTS `dealkhung`;
CREATE TABLE IF NOT EXISTS `dealkhung` (
  `iddealkhung` int(11) NOT NULL AUTO_INCREMENT,
  `tendealkhung` text COLLATE utf8_unicode_ci NOT NULL,
  `mota` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doitac` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urldealkhung` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinh` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tungay` date DEFAULT NULL,
  `denngay` date DEFAULT NULL,
  `soclick` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddealkhung`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dealkhung`
--

INSERT INTO `dealkhung` (`iddealkhung`, `tendealkhung`, `mota`, `doitac`, `urldealkhung`, `hinh`, `tungay`, `denngay`, `soclick`) VALUES
(29, 'Mid Season Sale - Xả hàng giá hấp dẫn', 'Hoàn tiền 4%', 'thongtindoitac', 'https://tiki.vn', 'dealkhung/1.jpg', '2019-01-01', '2019-01-15', 0),
(30, 'Build cấu hình máy tính - Giảm đến 500k', 'Hoàn tiền 5%', 'tiki.vn', 'https://www.adayroi.com', 'dealkhung/2.jpg', '2019-01-02', '2019-01-16', 0),
(31, 'Ưu đãi mùa bóng - Giảm đến 50%', 'Hoàn tiền 6%', 'adayroi.com', 'https://fptshop.com.vn', 'dealkhung/3.jpg', '2019-01-03', '2019-01-17', 0),
(32, 'Tặng 2 Voucher Vinpearl Nha Trang 2N1Đ trị giá 6 Triệu', 'Hoàn tiền7 %', 'fptshop.com.vn', 'https://www.lotte.vn', 'dealkhung/4.jpg', '2019-01-04', '2019-01-18', 0),
(33, 'Đăng ký ngay hôm nay - Cơ hội trúng Galaxy J7 Duo', 'Hoàn tiền 5.5%', 'lotte.vn', 'https://www.bachhoaxanh.com', 'dealkhung/5.jpg', '2019-01-05', '2019-01-19', 0),
(34, 'Mừng Quốc Tế Thiếu Nhi - Sắm quà cho bé', 'Hoàn tiền 4.5%', 'vuivui.com', 'http://www.flynow.vn', 'dealkhung/6.jpg', '2019-01-06', '2019-01-20', 0),
(35, 'Deal sốc cho thanh xuân - Giảm đến 50%++ cho 1000 Hot Deals', 'Hoàn tiền 6.5%', 'flynow', 'https://www.hotels.com', 'dealkhung/7.jpg', '2019-01-07', '2019-01-21', 0),
(36, 'Đặt trước Samsung Galaxy A6|A6+ Rinh quà tới 3 Triệu', 'Hoàn tiền 5.3%', 'hotels.com', 'https://www.klook.com', 'dealkhung/8.jpg', '2019-01-08', '2019-01-22', 0),
(37, 'Mid Season Sale - Xả hàng giá hấp dẫn', 'Hoàn tiền 4%', 'klook', 'https://canifa.com', 'dealkhung/1.jpg', '2019-01-09', '2019-01-23', 0),
(38, 'Build cấu hình máy tính - Giảm đến 500k', 'Hoàn tiền 5%', 'canifa', 'https://www.agoda.com', 'dealkhung/2.jpg', '2019-01-10', '2019-01-24', 0),
(39, 'Ưu đãi mùa bóng - Giảm đến 50%', 'Hoàn tiền 6%', 'agoda', 'https://tiki.vn', 'dealkhung/3.jpg', '2019-01-11', '2019-01-25', 0),
(40, 'Tặng 2 Voucher Vinpearl Nha Trang 2N1Đ trị giá 6 Triệu', 'Hoàn tiền7 %', 'thongtindoitac', 'https://www.adayroi.com', 'dealkhung/4.jpg', '2019-01-12', '2019-01-26', 0),
(41, 'Đăng ký ngay hôm nay - Cơ hội trúng Galaxy J7 Duo', 'Hoàn tiền 5.5%', 'tiki.vn', 'https://fptshop.com.vn', 'dealkhung/5.jpg', '2019-01-13', '2019-01-27', 0),
(42, 'Mừng Quốc Tế Thiếu Nhi - Sắm quà cho bé', 'Hoàn tiền 4.5%', 'adayroi.com', 'https://www.lotte.vn', 'dealkhung/6.jpg', '2019-01-14', '2019-01-28', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doitac`
--

DROP TABLE IF EXISTS `doitac`;
CREATE TABLE IF NOT EXISTS `doitac` (
  `iddoitac` int(11) NOT NULL AUTO_INCREMENT,
  `thongtindoitac` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thongtinchietkhau` mediumtext COLLATE utf8_unicode_ci,
  `linkdoitac` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`iddoitac`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doitac`
--

INSERT INTO `doitac` (`iddoitac`, `thongtindoitac`, `images`, `thongtinchietkhau`, `linkdoitac`) VALUES
(1, 'tiki.vn ', ' images/tiki.png', ' Hoàn tiền đến 3.3% ', ' https://tiki.vn'),
(2, 'adayroi.com ', ' images/adayroi.png', ' Hoàn tiền đến 5% ', ' https://www.adayroi.com'),
(3, 'fptshop.com.vn ', ' images/fptshop.png', ' Hoàn tiền đến 4.4% ', ' https://fptshop.com.vn'),
(4, 'lotte.vn ', ' images/lotte.png', ' hoàn tiền đến 5% ', ' https://www.lotte.vn'),
(5, 'vuivui.com ', ' images/vuivui.png', ' Hoàn tiền đến 3% ', ' https://www.bachhoaxanh.com'),
(6, 'flynow ', ' images/flynow.png', ' Hoàn tiền đến 50.000đ ', ' http://www.flynow.vn'),
(7, 'hotels.com ', ' images/hotels.png', ' Hoàn tiền đến 4.4% ', ' https://www.hotels.com'),
(8, 'klook ', ' images/klook.png', ' Hoàn tiền đến 3.5% ', ' https://www.klook.com'),
(9, 'canifa ', ' images/canifa.png', ' Hoàn tiền đến 6% ', ' https://canifa.com'),
(10, 'agoda ', ' images/agoda.png', ' Hoàn tiền đến 5.3% ', ' https://www.agoda.com'),
(11, 'tiki.vn ', ' images/tiki.png', ' Hoàn tiền đến 3.3% ', ' https://tiki.vn'),
(12, 'adayroi.com ', ' images/adayroi.png', ' Hoàn tiền đến 5% ', ' https://www.adayroi.com'),
(13, 'fptshop.com.vn ', ' images/fptshop.png', ' Hoàn tiền đến 4.4% ', ' https://fptshop.com.vn'),
(14, 'lotte.vn ', ' images/lotte.png', ' hoàn tiền đến 5% ', ' https://www.lotte.vn'),
(15, 'vuivui.com ', ' images/vuivui.png', ' Hoàn tiền đến 3% ', ' https://www.bachhoaxanh.com'),
(16, 'flynow ', ' images/flynow.png', ' Hoàn tiền đến 50.000đ ', ' http://www.flynow.vn'),
(17, 'hotels.com ', ' images/hotels.png', ' Hoàn tiền đến 4.4% ', ' https://www.hotels.com'),
(18, 'klook ', ' images/klook.png', ' Hoàn tiền đến 3.5% ', ' https://www.klook.com'),
(19, 'canifa ', ' images/canifa.png', ' Hoàn tiền đến 6% ', ' https://canifa.com'),
(20, 'agoda ', ' images/agoda.png', ' Hoàn tiền đến 5.3% ', ' https://www.agoda.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE IF NOT EXISTS `nguoidung` (
  `idnguoidung` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sotaikhoan` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tentaikhoan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tennganhang` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenchinhanh` text COLLATE utf8_unicode_ci,
  `quantri` int(11) DEFAULT NULL,
  PRIMARY KEY (`idnguoidung`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`idnguoidung`, `hoten`, `email`, `matkhau`, `sotaikhoan`, `tentaikhoan`, `tennganhang`, `tenchinhanh`, `quantri`) VALUES
(1, 'Nguyễn Văn A', '1@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Nguyen Van A', 'Agribannk', 'TP.HCM', 0),
(2, 'Đặng Thị B', '2@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Dang Thi B', 'Acb', 'TP.HCM', 0),
(3, 'Hồ Thị C', '3@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Ho Thi C', 'VietA', 'TP.HCM', 0),
(4, 'Bùi Văn Trường', '4@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Bui Van Truong', 'ViettinBank', 'TP.HCM', 0),
(5, 'Nguyễn Văn A', '5@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Nguyen Van A', 'Agribannk', 'TP.HCM', 0),
(6, 'Đặng Thị B', '6@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Dang Thi B', 'Acb', 'TP.HCM', 0),
(7, 'Hồ Thị C', '7@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Ho Thi C', 'VietA', 'TP.HCM', 0),
(8, 'Bùi Văn Trường', '8@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Bui Van Truong', 'ViettinBank', 'TP.HCM', 0),
(9, 'Nguyễn Văn A', '9@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Nguyen Van A', 'Agribannk', 'TP.HCM', 0),
(10, 'Đặng Thị B', '10@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Dang Thi B', 'Acb', 'TP.HCM', 0),
(11, 'Hồ Thị C', '11@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Ho Thi C', 'VietA', 'TP.HCM', 0),
(12, 'Bùi Văn Trường', '12@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Bui Van Truong', 'ViettinBank', 'TP.HCM', 0),
(13, 'Nguyễn Văn A', '13@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Nguyen Van A', 'Agribannk', 'TP.HCM', 0),
(14, 'Đặng Thị B', '14@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Dang Thi B', 'Acb', 'TP.HCM', 0),
(15, 'Hồ Thị C', '15@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Ho Thi C', 'VietA', 'TP.HCM', 0),
(16, 'Bùi Văn Trường', '16@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Bui Van Truong', 'ViettinBank', 'TP.HCM', 0),
(17, 'Nguyễn Văn A', '17@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Nguyen Van A', 'Agribannk', 'TP.HCM', 0),
(18, 'Đặng Thị B', '18@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Dang Thi B', 'Acb', 'TP.HCM', 0),
(19, 'Hồ Thị C', '19@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1234567890', 'Ho Thi C', 'VietA', 'TP.HCM', 0),
(20, '1', 'a@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', 'ACB', '1', 0),
(21, 'Bùi Văn Trường ', 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '1', '1', 'ACB', '1', 1),
(22, 'q', 'q@gmail.com', '7694f4a66316e53c8cdd9d9954bd611d', 'q', 'q', 'DongABank', 'q', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quangcao`
--

DROP TABLE IF EXISTS `quangcao`;
CREATE TABLE IF NOT EXISTS `quangcao` (
  `idquangcao` int(11) NOT NULL AUTO_INCREMENT,
  `mota` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doitac` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlquangcao` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hinh` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tungay` date DEFAULT NULL,
  `denngay` date DEFAULT NULL,
  `soclick` int(11) DEFAULT NULL,
  PRIMARY KEY (`idquangcao`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quangcao`
--

INSERT INTO `quangcao` (`idquangcao`, `mota`, `doitac`, `urlquangcao`, `hinh`, `tungay`, `denngay`, `soclick`) VALUES
(1, 'Quảng cáo 1', 'thongtindoitac', 'https://tiki.vn', 'quangcao/1.png', '2019-01-01', '2019-01-15', 0),
(2, 'Quảng cáo 2', 'tiki.vn', 'https://www.adayroi.com', 'quangcao/2.png', '2019-01-02', '2019-01-16', 0),
(3, 'Quảng cáo 3', 'adayroi.com', 'https://fptshop.com.vn', 'quangcao/3.png', '2019-01-03', '2019-01-17', 0),
(4, 'Quảng cáo 4', 'fptshop.com.vn', 'https://www.lotte.vn', 'quangcao/4.png', '2019-01-04', '2019-01-18', 0),
(5, 'Quảng cáo 5', 'lotte.vn', 'https://www.bachhoaxanh.com', 'quangcao/5.png', '2019-01-05', '2019-01-19', 0),
(6, 'Quảng cáo 6', 'vuivui.com', 'http://www.flynow.vn', 'quangcao/6.png', '2019-01-06', '2019-01-20', 0),
(7, 'Quảng cáo 7', 'flynow', 'https://www.hotels.com', 'quangcao/7.png', '2019-01-07', '2019-01-21', 0),
(8, 'Quảng cáo 8', 'hotels.com', 'https://www.klook.com', 'quangcao/8.png', '2019-01-08', '2019-01-22', 0),
(9, 'Quảng cáo 9', 'klook', 'https://canifa.com', 'quangcao/9.png', '2019-01-09', '2019-01-23', 0),
(10, 'Quảng cáo 10', 'canifa', 'https://www.agoda.com', 'quangcao/10.png', '2019-01-10', '2019-01-24', 0),
(11, 'Quảng cáo 11', 'agoda', 'https://tiki.vn', 'quangcao/11.png', '2019-01-11', '2019-01-25', 0),
(12, 'Quảng cáo 12', 'thongtindoitac', 'https://www.adayroi.com', 'quangcao/12.png', '2019-01-12', '2019-01-26', 0),
(13, 'Quảng cáo 13', 'tiki.vn', 'https://fptshop.com.vn', 'quangcao/13.png', '2019-01-13', '2019-01-27', 0),
(14, 'Quảng cáo 14', 'adayroi.com', 'https://www.lotte.vn', 'quangcao/14.png', '2019-01-14', '2019-01-28', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtingiaodich`
--

DROP TABLE IF EXISTS `thongtingiaodich`;
CREATE TABLE IF NOT EXISTS `thongtingiaodich` (
  `idgiaodich` int(11) NOT NULL AUTO_INCREMENT,
  `iddonhang` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nguoidung` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doitac` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sotien` float DEFAULT NULL,
  `hoantien` float DEFAULT NULL,
  `ngaymua` date DEFAULT NULL,
  `ngaydukienduyet` date DEFAULT NULL,
  `trangthai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idgiaodich`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtingiaodich`
--

INSERT INTO `thongtingiaodich` (`idgiaodich`, `iddonhang`, `nguoidung`, `doitac`, `sotien`, `hoantien`, `ngaymua`, `ngaydukienduyet`, `trangthai`) VALUES
(1, '10001', 'a@gmail.com', 'agoda', 1000000, 50000, '2018-12-01', '2018-12-31', 'Đã duyệt'),
(2, '10002', 'a@gmail.com', 'tiki.vn', 1000000, 50000, '2018-12-02', '2019-01-01', 'Đã duyệt'),
(3, '10003', 'a@gmail.com', 'adayroi.com', 1000000, 50000, '2018-12-03', '2019-01-02', 'Đã duyệt'),
(4, '10004', 'a@gmail.com', 'fptshop.com.vn', 1000000, 50000, '2018-12-04', '2019-01-03', 'Bị từ chối'),
(5, '10005', 'a@gmail.com', 'lotte.vn', 1000000, 50000, '2018-12-01', '2019-01-04', 'Bị từ chối'),
(6, '10006', '1@gmail.com', 'vuivui.com', 1000000, 50000, '2018-12-06', '2019-01-05', 'Đã duyệt'),
(7, '10007', '1@gmail.com', 'flynow', 1000000, 50000, '2018-12-07', '2019-01-06', 'Đã duyệt'),
(8, '10008', '1@gmail.com', 'hotels.com', 1000000, 50000, '2018-12-08', '2019-01-07', 'chờ duyệt'),
(9, '10009', '1@gmail.com', 'klook', 1000000, 50000, '2018-12-09', '2019-01-08', 'chờ duyệt'),
(10, '10010', '2@gmail.com', 'canifa', 1000000, 50000, '2018-12-10', '2019-01-09', 'chờ duyệt'),
(11, '10011', '2@gmail.com', 'agoda', 1000000, 50000, '2018-12-11', '2019-01-10', 'chờ duyệt');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
