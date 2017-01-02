USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_LAYSL_THEOMASP]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CT_DONDATHANG_LAYSL_THEOMASP]
(
	@MASP VARCHAR (10),
	@maddh varchar(10)
	
)

AS
BEGIN
	
	SELECT a.SoLuong
	FROM CT_DonDatHang a
	WHERE a.MaDDH=@maddh and a.MaSP=@MASP
	
END
GO
