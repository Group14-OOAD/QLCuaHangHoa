USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[sanpham_ktsoluong]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sanpham_ktsoluong]
  (
	@masp varchar(10)


	)
	AS
	BEGIN
		select SoLuong
		from SanPham
		where SanPham.MaSP=@masp
	END
GO
