USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[phieugiaohang_ktsoluong_ddh]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[phieugiaohang_ktsoluong_ddh]
@maddh varchar(10),
@masp varchar(10)
as
begin
	select a.SoLuong
	from CT_DonDatHang a
	where a.MaDDH=@maddh and a.MaSP=@masp
end
GO
