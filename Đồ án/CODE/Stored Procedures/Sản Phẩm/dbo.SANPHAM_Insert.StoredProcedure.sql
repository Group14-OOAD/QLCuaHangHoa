USE [QuanLiCuaHangHoa]
GO

/****** Object:  StoredProcedure [dbo].[SANPHAM_Insert]    Script Date: 1/3/2017 1:43:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[SANPHAM_Insert]
	(
		@maSanPham VARCHAR(10),
		@tenSP NVARCHAR(50),
		@donVi NVARCHAR(20),
		@donGia INT,
		@ghiChu NVARCHAR(100),
		@maLoaiSP VARCHAR(20),
		@soLuong int,
		@isActive bit
	)
AS
BEGIN
	INSERT INTO SanPham VALUES(@maSanPham, @tenSP, @donVi,
								@donGia, @ghiChu, @maLoaiSP,@soLuong, @isActive)
END

GO


