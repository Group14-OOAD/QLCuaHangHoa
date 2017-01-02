USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[HOADON_UPDATE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HOADON_UPDATE]
  (
	@MaHD varchar(10),
	@NgayLap date,
	@MaNV varchar(10),
	@MaKH varchar (10),
	@TongTien int,
	@GhiChu nvarchar(100)

	)
	AS
	BEGIN
		UPDATE HoaDonBanHang SET NgayLap = @NgayLap, MaNV=@MaNV, MaKH=@MaKH, TongTien=@TongTien, GhiChu=@GhiChu
		WHERE MaHD =@MaHD
	END
GO
