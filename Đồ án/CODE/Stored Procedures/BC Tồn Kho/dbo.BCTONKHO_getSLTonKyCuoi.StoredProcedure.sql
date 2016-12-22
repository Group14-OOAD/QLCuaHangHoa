USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCTONKHO_getSLTonKyCuoi]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BCTONKHO_getSLTonKyCuoi]
(
	@maSP VARCHAR(10),
	@month INT,
	@year INT
)
AS
BEGIN
	SELECT SLTonCuoiKy FROM BaoCaoTonKho
	WHERE MaSP = @maSP AND MONTH(NgayLap) = @month AND YEAR(NgayLap) = @year
END

GO
