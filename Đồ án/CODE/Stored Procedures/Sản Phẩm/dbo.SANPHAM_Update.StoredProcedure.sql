USE [QuanLiCuaHangHoa]
GO

/****** Object:  StoredProcedure [dbo].[SANPHAM_Update]    Script Date: 1/3/2017 2:54:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SANPHAM_Update]
	(
		@maSanPham VARCHAR(10),
		@TenSP NVARCHAR(50),
		@donVi NVARCHAR(20),
		@donGia INT,
		@ghiChu NVARCHAR(100),
		@maLoaiSP VARCHAR(20),
		@soLuong int,
		@isActive bit
	)
AS
BEGIN
	UPDATE SanPham
	SET 
		TenSP= @TenSP,
		DonVi = @donVi,
		DonGia = @donGia,
		GhiChu = @ghiChu,
		MaLoaiSP= @maLoaiSP,
		SoLuong =@soLuong,
		isActive = @isActive
	WHERE @maSanPham = MaSP
END



GO


