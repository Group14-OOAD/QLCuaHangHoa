USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUTHU_Update]    Script Date: 12/12/2016 10:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[PHIEUTHU_Update]
	(
		@MaPT VARCHAR(10),
		@NgayLap datetime,
		@MaNV VARCHAR(10),
		@MaKH VARCHAR(10),
		@SoTienNo int,
		@SoTienThu int
	)
AS
BEGIN
	UPDATE PhieuThu
	SET NgayLap = @NgayLap,
		MaNV= @MaNV,
		MaKH = @MaKH,
		SoTienNo = @SoTienNo,
		SoTienThu = @SoTienThu
	WHERE @MaPT = MaPT
END


GO
