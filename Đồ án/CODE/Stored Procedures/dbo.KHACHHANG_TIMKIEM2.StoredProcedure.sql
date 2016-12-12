USE [QuanLi]
GO

/****** Object:  StoredProcedure [dbo].[KHACHHANG_TIMKIEM2]    Script Date: 12/12/2016 11:54:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[KHACHHANG_TIMKIEM2]
(
	@MaKH varchar(10),
	@HoTen nvarchar(50),
	@DiaChi nvarchar(50),
	@SoDT int,
	@GhiChu nvarchar(100)
)
AS
 BEGIN

	if(@makh is not null and @makh <> '')
	begin
	SELECT * from KHACHHANG where MAKH like '%'+@makh+ '%'
	end
	if(@HoTen is not null and @HoTen <> '')
	begin
	SELECT * from KHACHHANG where HoTen like '%' + @HoTen + '%'
	end
	if(@diachi is not null and @diachi <> '')
	begin
	SELECT * from KHACHHANG where DIACHI like '%' + @diachi + '%'
	end
	if(@SoDT is not null and @SoDT <> '')
	begin
	SELECT * from KHACHHANG where SoDT like '%' + @SoDT + '%'
	end
	--if(@sdt is not null and @sdt <> '')
	--begin
	-- * from KHACHHANG where SODT like '%' + @sdt + '%'
	--end
	
	
END

GO

