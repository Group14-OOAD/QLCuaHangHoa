USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCCONGNOKH_getBaoCao]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCCONGNOKH_getBaoCao]
	(
		@maKH VARCHAR(10),
		@ngayLap VARCHAR(10)
	)
AS
BEGIN
	SELECT * FROM BaoCaoCongNoKH B
	WHERE @maKH = B.MaKH
	AND (CONVERT(VARCHAR(10), B.NgayLap, 120) = @ngayLap)
END


GO
