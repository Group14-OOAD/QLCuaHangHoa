USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[ct_hoadonsi_layds]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ct_hoadonsi_layds]
@maddh nvarchar(10)
as
begin
	SELECT c.MaSP, b.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM DONDATHANG A, SANPHAM B, CT_DonDatHang C
	WHERE A.MaDDH = C.MaDDH AND C.MaSP= B.MaSP and a.MaDDH =@maddh
end
GO
