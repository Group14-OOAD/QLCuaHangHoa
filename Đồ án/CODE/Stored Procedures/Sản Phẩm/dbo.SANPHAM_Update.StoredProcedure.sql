USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[SANPHAM_Update]    Script Date: 12/14/2016 10:12:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[SANPHAM_Update]
	(
		@maSanPham VARCHAR(10),
		@TenSP NVARCHAR(50),
		@donVi NVARCHAR(20),
		@donGia INT,
		@ghiChu NVARCHAR(100),
		@maLoaiSP VARCHAR(20)
	)
AS
BEGIN
	UPDATE SanPham
	SET MaSP = @maSanPham,
		TenSP= @TenSP,
		DonVi = @donVi,
		DonGia = @donGia,
		GhiChu = @ghiChu,
		MaLoaiSP= @maLoaiSP
	WHERE @maSanPham = MaSP
END

GO
