USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_DELETE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	 CREATE PROCEDURE [dbo].[DONDATHANG_DELETE]
	 (
		@MaDDH varchar(10)
	 )
	 AS
	 BEGIN
		DELETE FROM DONDATHANG WHERE MaDDH=@MaDDH

	 END
GO
