USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[ct_dondathang_laydstheomaddh]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ct_dondathang_laydstheomaddh]
 @maddh nvarchar(10)
 AS
BEGIN
	SELECT A.MaDDH,b.MaSP, B.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM DONDATHANG A, SANPHAM B, CT_DonDatHang C
	WHERE A.MaDDH = C.MaDDH AND C.MaSP= B.MaSP and a.MaDDH =@maddh
END
GO
