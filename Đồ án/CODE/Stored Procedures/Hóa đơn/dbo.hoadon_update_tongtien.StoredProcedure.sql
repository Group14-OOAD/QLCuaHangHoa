USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[hoadon_update_tongtien]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[hoadon_update_tongtien]
@mahd NVARCHAR (10),
@TONGTIEN INT
AS
BEGIN
UPDATE HoaDonBanHang SET TongTien = @TONGTIEN WHERE Mahd=@mahd
END
GO
