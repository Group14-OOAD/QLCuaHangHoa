USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCTONKHO_Del]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BCTONKHO_Del]
	(
		@ngayLap VARCHAR(10),
		@maSP VARCHAR(10)
	)
AS
BEGIN
	DELETE FROM BaoCaoTonKho WHERE 
		(CONVERT(VARCHAR(10), NgayLap, 120) = @ngayLap)
		AND MaSP = @maSP
END


GO
