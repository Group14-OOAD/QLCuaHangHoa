USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCCONGNOKH_getNoKyCuoi]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCCONGNOKH_getNoKyCuoi]
(
	@maKH VARCHAR(10),
	@month INT,
	@year INT
)
AS
BEGIN
	SELECT NoKyCuoi FROM BaoCaoCongNoKH
	WHERE MONTH(NgayLap) = @month 
			AND YEAR(NgayLap) = @year
			AND MaKH = @maKH
END

GO
