USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUGIAOHANG_DELETE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PHIEUGIAOHANG_DELETE]
	 (
		@MaPGH varchar(10)
	 )
	 AS
	 BEGIN
		DELETE FROM PhieuGiaoHang WHERE MaPGH=@MaPGH

	 END

GO
