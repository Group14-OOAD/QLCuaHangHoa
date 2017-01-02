USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[sanpham_theoddh]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sanpham_theoddh]
(
@maddh nvarchar(10)
)
 AS
BEGIN
	select a.MaSP, a.TenSP, a.DonVi, a.DonGia, c.SoLuong
	from SanPham a,   CT_DonDatHang c
	where  a.MaSP=c.MaSP and c.MaDDH=@maddh
END
GO
