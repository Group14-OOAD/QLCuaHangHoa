USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_HOADON_LAYDS]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HOADON_LAYDS]

AS
BEGIN
	SELECT A.MaHD, c.MaSP, c.TenSP, c.DonGia,b.SoLuong, B.ThanhTien
	FROM HoaDonBanHang A, CT_HoaDonBanHang B, SanPham C
	WHERE A.MaHD = B.MaHD AND B.MaSP = C.MaSP
END
GO
