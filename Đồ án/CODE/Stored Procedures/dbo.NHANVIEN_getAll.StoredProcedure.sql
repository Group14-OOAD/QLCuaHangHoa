USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_getAll]    Script Date: 12/14/2016 9:53:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
create PROCEDURE [dbo].[NHANVIEN_getAll]

AS
BEGIN
	SELECT * FROM NhanVien
END


GO
