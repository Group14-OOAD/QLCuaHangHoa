USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCTONKHO_getAll]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[BCTONKHO_getAll]

AS
BEGIN
	SELECT * FROM BaoCaoTonKho
END

GO
