USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[ct_phieugiaohang_laysl_theomasp]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ct_phieugiaohang_laysl_theomasp]
(
	@MASP VARCHAR (10),
	@mapgh varchar(10)
	
)

AS
BEGIN
	
	SELECT a.SoLuong
	FROM CT_PhieuGiaoHang a
	WHERE a.MaPGH=@mapgh and a.MaSP=@MASP
	
END
GO
