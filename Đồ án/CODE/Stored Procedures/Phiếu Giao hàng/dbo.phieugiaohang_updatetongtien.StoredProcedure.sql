USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[phieugiaohang_updatetongtien]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[phieugiaohang_updatetongtien]
@mapgh NVARCHAR (10),
@tongtien INT
AS
BEGIN
UPDATE PhieuGiaoHang SET TongTien = @TONGTIEN WHERE MaPGH=@mapgh
END
GO
