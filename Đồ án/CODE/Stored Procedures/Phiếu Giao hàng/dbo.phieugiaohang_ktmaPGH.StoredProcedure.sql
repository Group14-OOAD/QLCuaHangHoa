USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[phieugiaohang_ktmaPGH]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[phieugiaohang_ktmaPGH]
@mapgh varchar (10)
as
begin
	select MaPGH
	from PhieuGiaoHang
	where MaPGH=@mapgh
end
GO
