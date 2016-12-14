USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[SANPHAM_Insert]    Script Date: 12/14/2016 10:12:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SANPHAM_Insert]
	(
		@maSanPham VARCHAR(10),
		@tenSP NVARCHAR(50),
		@donVi NVARCHAR(20),
		@donGia INT,
		@ghiChu NVARCHAR(100),
		@maLoaiSP VARCHAR(20)
	)
AS
BEGIN
	INSERT INTO SanPham VALUES(@maSanPham, @tenSP, @donVi,
								@donGia, @ghiChu, @maLoaiSP)
END



GO
