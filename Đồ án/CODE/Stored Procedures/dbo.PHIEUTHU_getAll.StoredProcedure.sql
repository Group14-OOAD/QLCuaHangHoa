USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUTHU_getAll]    Script Date: 12/12/2016 10:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
create PROCEDURE [dbo].[PHIEUTHU_getAll]

AS
BEGIN
	SELECT * FROM PhieuThu
END


GO
