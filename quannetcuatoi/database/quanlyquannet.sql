-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 07, 2022 lúc 05:31 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlyquannet`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi`
--

CREATE TABLE `chi` (
  `ID` int(11) NOT NULL,
  `DanhMuc` int(11) NOT NULL,
  `SoTien` int(11) NOT NULL,
  `Ngay` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `ID` int(11) NOT NULL,
  `MaDanhMuc` varchar(10) NOT NULL,
  `TenDanhMuc` varchar(500) NOT NULL,
  `Loai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `sdtkhachhang` char(10) NOT NULL COMMENT 'sdt KH',
  `idmay` int(11) NOT NULL COMMENT 'id máy tính',
  `idgiatien` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'id giá tiền',
  `thoigianbatdau` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'thời gian bắt đầu sử dụng',
  `thoigianketthuc` timestamp NULL DEFAULT NULL COMMENT 'thời gian trả máy',
  `giamgia` int(11) NOT NULL DEFAULT 0,
  `ghichu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giatien`
--

CREATE TABLE `giatien` (
  `idgiatien` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'thời gian cập nhật giá',
  `gia` int(11) NOT NULL COMMENT 'giá tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giatien`
--

INSERT INTO `giatien` (`idgiatien`, `gia`) VALUES
('2021-05-22 16:30:48', 2),
('2021-05-22 16:37:07', 3),
('2022-09-01 03:10:27', 3),
('2022-09-01 09:19:56', 4),
('2022-09-02 03:10:27', 3),
('2022-09-03 03:10:27', 4),
('2022-09-04 03:10:27', 5),
('2022-09-05 03:10:27', 5),
('2022-09-14 16:16:51', 6),
('2022-09-14 16:19:56', 7),
('2022-10-04 14:50:36', 7),
('2022-12-07 14:42:20', 10),
('2022-12-07 14:42:37', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maytinh`
--

CREATE TABLE `maytinh` (
  `id` int(11) NOT NULL COMMENT 'khóa chính',
  `tenmay` varchar(32) NOT NULL COMMENT 'tên máy tính',
  `tinhtrang` varchar(32) NOT NULL DEFAULT 'binhthuong' COMMENT 'bình thường/hỏng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `maytinh`
--

INSERT INTO `maytinh` (`id`, `tenmay`, `tinhtrang`) VALUES
(1, 'Máy tính 01', 'Hỏng'),
(2, 'Máy tính 02', 'Bình thường'),
(3, 'Máy tính 03', 'Bình thường'),
(4, 'Máy tính 04', 'Bình thường'),
(5, 'Máy tính 05', 'Bình thường'),
(6, 'Máy tính 06', 'Bình thường'),
(7, 'Máy tính 07', 'Bình thường'),
(8, 'Máy tính 08', 'Bình thường'),
(9, 'Máy tính 09', 'Bình thường'),
(10, 'Máy tính 10', 'Bình thường'),
(11, 'Máy tính 11', 'Hỏng'),
(12, 'Máy tính 12', 'Bình thường'),
(13, 'Máy tính 13', 'Bình thường'),
(14, 'Máy tính 14', 'Bình thường'),
(15, 'Máy tính 15', 'Bình thường'),
(16, 'Máy tính 16', 'Bình thường'),
(17, 'Máy tính 17', 'Bình thường'),
(18, 'Máy tính 18', 'Hỏng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `taikhoan` varchar(16) NOT NULL COMMENT 'khóa chính',
  `matkhau` char(32) NOT NULL COMMENT 'mật khẩu mã hóa',
  `loaitaikhoan` varchar(255) NOT NULL DEFAULT 'Bình thường',
  `ghichu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`taikhoan`, `matkhau`, `loaitaikhoan`, `ghichu`) VALUES
('admin', 'd41d8cd98f00b204e9800998ecf8427e', 'Quản trị', ''),
('nguoidung01', 'e10adc3949ba59abbe56e057f20f883e', 'Bình thường', NULL),
('nhanvien', 'd41d8cd98f00b204e9800998ecf8427e', 'Bình thường', ''),
('taikhoan001', 'e10adc3949ba59abbe56e057f20f883e', 'Bình thường', NULL),
('user01', 'e10adc3949ba59abbe56e057f20f883e', 'Bình thường', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinkhachhang`
--

CREATE TABLE `thongtinkhachhang` (
  `sdt` char(10) NOT NULL COMMENT 'khóa chính',
  `hoten` varchar(255) NOT NULL,
  `ngaysinh` date DEFAULT NULL COMMENT 'ngày/tháng/năm sinh KH',
  `diachi` varchar(255) DEFAULT NULL COMMENT 'địa chỉ KH',
  `thoigiandangky` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'thời gian đăng ký KH',
  `loaikhachhang` varchar(16) NOT NULL DEFAULT 'binhthuong' COMMENT 'KH bình thường/thân thuộc/VIP',
  `gioitinh` varchar(3) DEFAULT NULL COMMENT 'giới tính KH'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thongtinkhachhang`
--

INSERT INTO `thongtinkhachhang` (`sdt`, `hoten`, `ngaysinh`, `diachi`, `thoigiandangky`, `loaikhachhang`, `gioitinh`) VALUES
('0495353490', 'Đoàn Mạnh Dương', '1999-01-05', 'Phú Thọ', '2022-12-07 15:17:08', 'Bình thường', 'Nam'),
('0868716264', 'Dương Đình Mạnh', '2003-06-05', 'Vĩnh Phúc', '2022-12-07 15:15:36', 'VIP', 'Nam'),
('0987654312', 'Phạm Xuân Trường', '2008-12-10', 'Thái Bình', '2022-12-07 15:16:18', 'Thân thuộc', 'Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thu`
--

CREATE TABLE `thu` (
  `ID` int(11) NOT NULL,
  `DanhMuc` int(11) NOT NULL,
  `SoTien` int(11) NOT NULL,
  `Ngay` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `ID` int(11) NOT NULL,
  `DanhMuc` int(11) NOT NULL,
  `TinhTrang` int(11) NOT NULL,
  `DienGiai` varchar(500) NOT NULL,
  `Ngay` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi`
--
ALTER TABLE `chi`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`sdtkhachhang`,`thoigianbatdau`),
  ADD KEY `idgiatien` (`idgiatien`),
  ADD KEY `idmay` (`idmay`);

--
-- Chỉ mục cho bảng `giatien`
--
ALTER TABLE `giatien`
  ADD PRIMARY KEY (`idgiatien`);

--
-- Chỉ mục cho bảng `maytinh`
--
ALTER TABLE `maytinh`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tenmay` (`tenmay`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`taikhoan`);

--
-- Chỉ mục cho bảng `thongtinkhachhang`
--
ALTER TABLE `thongtinkhachhang`
  ADD PRIMARY KEY (`sdt`);

--
-- Chỉ mục cho bảng `thu`
--
ALTER TABLE `thu`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi`
--
ALTER TABLE `chi`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `maytinh`
--
ALTER TABLE `maytinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'khóa chính', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `thu`
--
ALTER TABLE `thu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD CONSTRAINT `idmay` FOREIGN KEY (`idmay`) REFERENCES `maytinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sdt` FOREIGN KEY (`sdtkhachhang`) REFERENCES `thongtinkhachhang` (`sdt`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
