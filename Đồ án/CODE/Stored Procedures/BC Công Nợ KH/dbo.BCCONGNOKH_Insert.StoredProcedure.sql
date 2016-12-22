USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCCONGNOKH_Insert]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCCONGNOKH_Insert]
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
	INSERT INTO BaoCaoCongNoKH VALUES
	(
		@ngayLap,
		@maKH,
		@maNV,
		@noKyDau,
		@phatSinh,
		@noKyCuoi,
		@ghiChu
	)
END


GO
