USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[SANPHAM_getAll]    Script Date: 12/14/2016 10:12:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
create PROCEDURE [dbo].[SANPHAM_getAll]

AS
BEGIN
	SELECT * FROM SanPham
END
GO
