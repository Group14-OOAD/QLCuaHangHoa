USE [QuanLiCuaHangHoa]
GO

/****** Object:  StoredProcedure [dbo].[SANPHAM_Insert]    Script Date: 1/2/2017 9:20:47 PM ******/
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
		@maLoaiSP VARCHAR(20),
		@isActive bit
	)
AS
BEGIN
	INSERT INTO SanPham VALUES(@maSanPham, @tenSP, @donVi,
								@donGia, @ghiChu, @maLoaiSP, @isActive)
END



GO


