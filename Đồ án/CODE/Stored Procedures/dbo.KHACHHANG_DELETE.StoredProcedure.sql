USE [QuanLi]
GO

/****** Object:  StoredProcedure [dbo].[KHACHHANG_DELETE]    Script Date: 12/12/2016 11:52:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[KHACHHANG_DELETE]
	 (
		@MaKH varchar(10)
	 )
	 AS
	 BEGIN
		DELETE FROM KHACHHANG WHERE MAKH=@MaKH

	 END

GO

