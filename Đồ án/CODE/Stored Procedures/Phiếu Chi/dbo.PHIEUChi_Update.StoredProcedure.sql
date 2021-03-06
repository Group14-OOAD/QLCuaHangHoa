USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUChi_Update]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[PHIEUChi_Update]
	(
		@MaPhieuChi VARCHAR(10),
		@NgayLap datetime,
		@MaNV VARCHAR(10),
		@MaKH VARCHAR(10),
		@SoTienNo int,
		@SoTienThu int
	)
AS
BEGIN
	UPDATE PhieuChi
	SET NgayLap = @NgayLap,
		MaNV= @MaNV,
		MaKH = @MaKH,
		SoTienNo = @SoTienNo,
		SoTienThu = @SoTienThu
	WHERE @MaPhieuChi = MaPC
END
GO
