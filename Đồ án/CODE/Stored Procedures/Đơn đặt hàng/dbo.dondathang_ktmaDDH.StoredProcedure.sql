USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[dondathang_ktmaDDH]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dondathang_ktmaDDH]
@maddh varchar (10)
as
begin
	select MaDDH
	from DonDatHang
	where MaDDH =@maddh
end
GO
