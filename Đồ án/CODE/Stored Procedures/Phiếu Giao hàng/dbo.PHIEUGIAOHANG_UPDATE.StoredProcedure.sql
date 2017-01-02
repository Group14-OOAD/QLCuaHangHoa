USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUGIAOHANG_UPDATE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PHIEUGIAOHANG_UPDATE]
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
		UPDATE PhieuGiaoHang SET NgayLap = @NgayLap, MaNV=@MaNV, MaKH=@MaKH, TongTien=@TongTien, GhiChu=@GhiChu, MaPGH=@MaPGH
		WHERE MaPGH =@MaPGH
	END


GO
