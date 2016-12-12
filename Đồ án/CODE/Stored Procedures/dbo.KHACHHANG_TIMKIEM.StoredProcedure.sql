USE [QuanLi]
GO

/****** Object:  StoredProcedure [dbo].[KHACHHANG_TIMKIEM]    Script Date: 12/12/2016 11:54:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[KHACHHANG_TIMKIEM]
@TuKhoa varchar(100)
 AS

 BEGIN
	SELECT * from KHACHHANG where (MAKH like '%'+ @TuKhoa+ '%')
							or	(HoTen like '%'+ @TuKhoa+ '%')
							or	(DiaChi like '%'+ @TuKhoa+ '%')
							or	(SODT like '%'+ @TuKhoa+ '%')
							or	(GhiChu like '%'+ @TuKhoa+ '%')
END
GO

