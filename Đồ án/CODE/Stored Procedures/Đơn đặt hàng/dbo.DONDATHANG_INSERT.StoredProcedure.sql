USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_INSERT]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DONDATHANG_INSERT]
  (
	
	@MaDDH varchar(10),
	@NgayLap date,
	@MaNV varchar(10),
	@MaKH varchar (10),
	@TongTien int,
	@NgayGiaoDuKien date,
	@GhiChu nvarchar(100)

	) 

	AS
	BEGIN
		Insert into DonDatHang(MaDDH,NgayLap,MaNV,MaKH,TongTien, NgayGiaoDuKien, GhiChu) values(@MaDDH,  @NgayLap, @MaNV, @MaKH, @TongTien, @NgayGiaoDuKien, @GhiChu)
	END

GO
