USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_HOADON_DELETE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HOADON_DELETE]
	 (
		@MaHD varchar(10),
		@MASP VARCHAR(10)

	 )
	 AS
	 BEGIN
		DELETE FROM CT_HoaDonBanHang WHERE MaHD=@MaHD AND MaSP = @MASP

	 END
GO
