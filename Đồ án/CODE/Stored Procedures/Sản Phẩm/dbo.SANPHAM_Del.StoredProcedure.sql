USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[SANPHAM_Del]    Script Date: 12/14/2016 10:12:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[SANPHAM_Del]
	(
		@maSanPham VARCHAR(10)
	)
AS
BEGIN
	Update SanPham 
		set isActive = 0
		Where SanPham.MaSP = @maSanPham
END



GO
