USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[sanpham_update_soluong]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sanpham_update_soluong]
(
	@masp varchar(10),
	@soluong int
)
as
begin
	update SanPham
	set SoLuong=@soluong
	where MaSP =@masp
end
GO
