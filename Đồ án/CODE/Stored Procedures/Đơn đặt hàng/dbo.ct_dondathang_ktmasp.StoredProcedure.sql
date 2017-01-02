USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[ct_dondathang_ktmasp]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ct_dondathang_ktmasp]
	 @masp varchar(10),
	 @maddh varchar(10)
	 as
	 begin
		select MaSP
		from CT_DonDatHang
		where MaSP=@masp and MaDDH=@maddh
	 end
GO
