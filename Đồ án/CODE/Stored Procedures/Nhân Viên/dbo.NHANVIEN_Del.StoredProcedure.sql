USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_Del]    Script Date: 12/12/2016 10:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[NHANVIEN_Del]
	(
		@maNhanVien VARCHAR(10)
	)
AS
BEGIN
	DELETE FROM NhanVien
	WHERE @maNhanVien LIKE NhanVien.MaNV
END


GO
