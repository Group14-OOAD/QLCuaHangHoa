USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[hoadon_ktmaHD]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[hoadon_ktmaHD]
@mahd varchar (10)
as
begin
	select MaHD
	from HoaDonBanHang
	where MaHD=@mahd
end
GO
