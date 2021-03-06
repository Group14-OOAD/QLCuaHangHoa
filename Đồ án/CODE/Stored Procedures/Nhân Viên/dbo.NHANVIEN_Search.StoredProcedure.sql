USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_Search]    Script Date: 12/12/2016 10:03:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[NHANVIEN_Search]
	(
		@maNhanVien VARCHAR(10) = '',
		@hoTen NVARCHAR(50) = '',
		@namSinh INT = 0,
		@maLoaiNV VARCHAR(20) = ''
	)
AS
BEGIN
	select * from NHANVIEN
	WHERE (MaNV LIKE '%'+ @maNhanVien + '%' OR @maNhanVien IS NULL or @maNhanVien = '')
		AND (HoTen LIKE '%' + @hoTen + '%' or @hoTen is null or @hoTen = '')
		AND (NamSinh = @namSinh or @namSinh = 0)
		AND (MaLoaiNV LIKE @maLoaiNV or @maLoaiNV is null or @maLoaiNV = '')
END


GO
