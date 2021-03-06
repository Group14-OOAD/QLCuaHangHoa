USE [QuanLiCuaHangHoa]
GO

/****** Object:  StoredProcedure [dbo].[SANPHAM_Search]    Script Date: 1/3/2017 1:14:20 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
Create PROCEDURE [dbo].[SANPHAM_Search]
	(
	

		@maSanPham VARCHAR(10)='',
		@tenSP NVARCHAR(50)='',
		@maLoaiSP VARCHAR(20)=''
	)
AS
BEGIN
	select * from SanPham
	WHERE   (MaSP     LIKE '%' + @maSanPham + '%' OR @maSanPham IS NULL OR @maSanPham = '')
		AND (TenSP    LIKE '%' + @tenSP     + '%' OR @tenSP     IS null OR @tenSP     = '')
		AND (MaLoaiSP LIKE '%' + @maLoaiSP  + '%' OR @maLoaiSP  IS null OR @maLoaiSP  = '')
END



GO


