USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[ct_phieugiaohang_ktsldagiao]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ct_phieugiaohang_ktsldagiao]
  (
	@maddh varchar(10),
	@masp varchar (10)  
	)
	as
	begin
		select sum(a.SoLuong)
  from CT_PhieuGiaoHang a, PhieuGiaoHang b
  where a.MaPGH=b.MaPGH and b.MaDDH=@maddh and a.MaSP=@masp
	end
GO
