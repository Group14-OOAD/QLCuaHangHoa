USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[ct_phieugiaohang_laydstheomapgh]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ct_phieugiaohang_laydstheomapgh]
(
@mapgh nvarchar(10)
)
 AS
BEGIN
	SELECT a.MaPGH,b.MaSP, B.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM  PhieuGiaoHang A, SANPHAM B, CT_PhieuGiaoHang C
	WHERE A.MaPGH = c.MaPGH AND C.MaSP= B.MaSP and a.MaPGH=@mapgh
END
GO
