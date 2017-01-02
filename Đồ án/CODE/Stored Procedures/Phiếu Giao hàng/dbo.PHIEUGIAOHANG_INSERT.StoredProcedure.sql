USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUGIAOHANG_INSERT]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	 CREATE PROCEDURE [dbo].[PHIEUGIAOHANG_INSERT]
  (
	@MaPGH varchar(10),
	@NgayLap date,
	@MaNV varchar(10),
	@MaKH varchar (10),
	@TongTien int,
	
	@GhiChu nvarchar(100),
	@MADDH VARCHAR(10)
	) 

	AS
	BEGIN
		

		
		Insert into PhieuGiaoHang(MaPGH,NgayLap,MaNV,MaKH,TongTien, GhiChu, MaDDH) values( @MaPGH, @NgayLap, @MaNV, @MaKH, @TongTien, @GhiChu,@MADDH )
	END
GO
