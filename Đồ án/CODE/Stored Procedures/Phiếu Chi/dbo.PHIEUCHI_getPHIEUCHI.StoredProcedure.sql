USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUCHI_getPHIEUCHI]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[PHIEUCHI_getPHIEUCHI]
	(
		@maPHIEUCHI VARCHAR(10)
	)
AS
BEGIN
	SELECT * FROM PhieuChi
	WHERE @maPHIEUCHI = MaPC
END




GO
