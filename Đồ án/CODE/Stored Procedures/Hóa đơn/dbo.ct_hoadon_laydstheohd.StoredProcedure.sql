USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[ct_hoadon_laydstheohd]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ct_hoadon_laydstheohd]
 @mahd nvarchar(10)
 AS
BEGIN
	SELECT A.MaHD,b.MaSP, B.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM HoaDonBanHang A, SANPHAM b, CT_HoaDonBanHang c
	WHERE a.MaHD = c.MaHD AND C.MaSP= B.MaSP and a.MaHD=@mahd
END

GO
