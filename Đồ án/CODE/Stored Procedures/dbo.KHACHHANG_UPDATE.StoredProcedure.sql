USE [QuanLi]
GO

/****** Object:  StoredProcedure [dbo].[KHACHHANG_UPDATE]    Script Date: 12/12/2016 11:54:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[KHACHHANG_UPDATE]
  (
	@MaKH varchar(10),
	@HoTen nvarchar(50),
	@DiaChi nvarchar(50),
	@SoDT int,
	@GhiChu nvarchar(100)

	)
	AS
	BEGIN
		UPDATE KHACHHANG SET KHACHHANG.HoTen = @HoTen, KHACHHANG.DiaChi = @DiaChi, KHACHHANG.SoDT = @SoDT, KHACHHANG.GhiChu = @GhiChu WHERE KHACHHANG.MaKH = @MaKH
	END
GO

