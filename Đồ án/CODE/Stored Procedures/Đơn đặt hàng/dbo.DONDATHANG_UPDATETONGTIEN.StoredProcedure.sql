USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_UPDATETONGTIEN]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[DONDATHANG_UPDATETONGTIEN]
@MADDH NVARCHAR (10),
@TONGTIEN INT
AS
BEGIN
UPDATE DonDatHang SET TongTien = @TONGTIEN WHERE MaDDH=@MADDH
END
GO
