USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[DonNhapHang_getAll]    Script Date: 12/16/2016 9:37:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
Create PROCEDURE [dbo].[DonNhapHang_getAll]

AS
BEGIN
	SELECT * FROM DonNhapHang
END

GO
