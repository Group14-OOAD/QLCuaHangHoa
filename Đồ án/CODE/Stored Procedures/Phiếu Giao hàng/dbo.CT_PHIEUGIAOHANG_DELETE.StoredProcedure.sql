USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_PHIEUGIAOHANG_DELETE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PHIEUGIAOHANG_DELETE]
	 (
		@MaPGH varchar(10),
		@MASP VARCHAR(10)
	 )
	 AS
	 BEGIN
		DELETE FROM CT_PhieuGiaoHang WHERE MaPGH=@MaPGH AND MaSP = @MASP

	 END
GO
