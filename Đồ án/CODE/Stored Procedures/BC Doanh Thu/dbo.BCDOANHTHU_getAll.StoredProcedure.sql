USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCDOANHTHU_getAll]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[BCDOANHTHU_getAll]

AS
BEGIN
	SELECT * FROM BaoCaoDoanhThu
END


GO
