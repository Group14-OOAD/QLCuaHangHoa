USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCCONGNOKH_Update]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCCONGNOKH_Update]
	(
		@ngayLap VARCHAR(10),
		@maKH VARCHAR(10),
		@maNV VARCHAR(10),
		@noKyDau INT,
		@phatSinh INT,
		@noKyCuoi INT,
		@ghiChu NVARCHAR(100)
	)
AS
BEGIN
	UPDATE BaoCaoCongNoKH SET
		MaNV = @maNV,
		NoKyDau = @noKyDau,
		PhatSinh = @phatSinh,
		NoKyCuoi = @noKyCuoi,
		GhiChu = @ghiChu
		WHERE 
		(CONVERT(VARCHAR(10), NgayLap, 120) = @ngayLap)
		AND MaKH = @maKH
END


GO
