USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[HOADON_DELETE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[HOADON_DELETE]
	 (
		@MaHD varchar(10)
	 )
	 AS
	 BEGIN
		DELETE FROM HoaDonBanHang WHERE MaHD=@MaHD

	 END

GO
