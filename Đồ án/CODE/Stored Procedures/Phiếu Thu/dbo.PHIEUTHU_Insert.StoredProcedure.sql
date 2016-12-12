USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUTHU_Insert]    Script Date: 12/12/2016 10:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PHIEUTHU_Insert]
	(
		@MaPT VARCHAR(10),
		@NgayLap VARCHAR(10),
		@MaNV VARCHAR(10),
		@MaKH VARCHAR(10),
		@SoTienNo int,
		@SoTienThu int
	)
AS
BEGIN
	INSERT INTO PhieuThu VALUES(@MaPT, @NgayLap, @MaNV,
								@MaKH, @SoTienNo, @SoTienThu)
END


GO
