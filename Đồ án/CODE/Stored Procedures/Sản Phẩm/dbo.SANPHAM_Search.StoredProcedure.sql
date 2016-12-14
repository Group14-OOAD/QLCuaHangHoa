USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[SANPHAM_Search]    Script Date: 12/14/2016 10:12:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[SANPHAM_Search]
	(
	

		@maSanPham VARCHAR(10)='',
		@tenSP NVARCHAR(50)='',
		@maLoaiSP VARCHAR(20)=''
	)
AS
BEGIN
	select * from SanPham
	WHERE (MaSP LIKE '%'+ @maSanPham + '%' OR @maSanPham IS NULL or @maSanPham = '')
		AND (TenSP LIKE '%' + @tenSP + '%' or @tenSP is null or @tenSP = '')
		AND (MaLoaiSP LIKE @maLoaiSP or @maLoaiSP is null or @maLoaiSP = '')
END



GO
