USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[SANPHAM_Del]    Script Date: 12/14/2016 10:12:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SANPHAM_Del]
	(
		@maSanPham VARCHAR(10)
	)
AS
BEGIN
	DELETE FROM SanPham
	WHERE @maSanPham LIKE SanPham.MaSP
END



GO
