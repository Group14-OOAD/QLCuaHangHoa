USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[HOADON_LAYDS]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HOADON_LAYDS]

AS
BEGIN
	SELECT A.MaHD, A.NgayLap, B.HoTen, C.HoTen, A.TongTien
	FROM HoaDonBanHang A, NHANVIEN B, KHACHHANG C
	WHERE A.MaNV=B.MaNV AND A.MaKH=C.MaKH
END
GO
