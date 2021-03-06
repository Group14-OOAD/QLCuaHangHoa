USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_UPDATE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DONDATHANG_UPDATE]
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
		UPDATE DonDatHang SET DonDatHang.NgayLap = @NgayLap, MaNV=@MaNV, MaKH=@MaKH, TongTien=@TongTien, NgayGiaoDuKien=@NgayGiaoDuKien, GhiChu=@GhiChu
		WHERE MaDDH=@MaDDH
	END

GO
