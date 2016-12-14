USE [QuanLi]
GO

/****** Object:  StoredProcedure [dbo].[KHACHHANG_INSERT]    Script Date: 12/12/2016 11:53:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[KHACHHANG_INSERT]
  (
	@MaKH varchar(10),
	@HoTen nvarchar(50),
	@DiaChi nvarchar(50),
	@SoDT int,
	@GhiChu nvarchar(100)

	) 

	AS
	BEGIN
		declare @return nvarchar(10), @MaKHCuoi varchar(10), @TemNumber nvarchar(10), @tempLen int, @nextnum int
		select top(1) @MaKHCuoi = MaKH from KHACHHANG order by MaKH desc 

		if(@MaKHCuoi is null)
			select @return = 'KH00000001'
		else
		begin
			select @tempLen = LEN (@MaKHCuoi)
			select @TemNumber = SUBSTRING(@MaKHCuoi,3,@tempLen-2) /*Lay chuoi so tring chuôi Makh*/
			select @nextnum = CONVERT(int, @TemNumber)+1

			select @return = case
			when LEN(convert(nvarchar, @nextnum))=1 then 'KH0000000'+ convert(nvarchar, @nextnum)
			when LEN(convert(nvarchar,@nextnum))=2  then 'KH000000' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=3  then 'KH00000' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=4  then 'KH0000' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=5  then 'KH000' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=6  then 'KH00' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=7  then 'KH0' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=8  then 'KH' + convert(nvarchar,@nextnum)
		end
		end
		Insert into KHACHHANG(MaKH,HoTen,DiaChi,SoDT,GhiChu) values( @return, @HoTen, @Diachi , @SoDT,@GhiChu)
			
	END
GO

