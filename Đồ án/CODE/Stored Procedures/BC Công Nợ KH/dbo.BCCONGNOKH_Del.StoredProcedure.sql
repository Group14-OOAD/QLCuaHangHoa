USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCCONGNOKH_Del]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCCONGNOKH_Del]
	(
		@ngayLap VARCHAR(10),
		@maKH VARCHAR(10)
	)
AS
BEGIN
	DELETE FROM BaoCaoCongNoKH WHERE 
		(CONVERT(VARCHAR(10), NgayLap, 120) = @ngayLap)
		AND MaKH = @maKH
END


GO
