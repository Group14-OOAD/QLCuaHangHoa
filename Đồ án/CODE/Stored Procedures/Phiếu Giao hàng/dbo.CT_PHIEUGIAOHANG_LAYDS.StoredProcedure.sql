USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_PHIEUGIAOHANG_LAYDS]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PHIEUGIAOHANG_LAYDS]

AS
BEGIN
	SELECT A.MaPGH, b.MaSP,c.TenSP, B.SoLuong, c.DonGia,b.ThanhTien
	FROM PhieuGiaoHang A, CT_PhieuGiaoHang B, SanPham C
	WHERE A.MaPGH = B.MaPGH AND B.MaSP = C.MaSP
END
GO
