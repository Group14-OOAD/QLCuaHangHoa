USE [QuanLiCuaHangHoa]
GO
/****** Object:  StoredProcedure [dbo].[BCDOANHTHU_getTongThu]    Script Date: 12/23/2016 12:33:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BCDOANHTHU_getTongThu]
(
	@maSP VARCHAR(10),
	@month INT,
	@year INT
)
AS
BEGIN
	SELECT SUM(CT.ThanhTien) AS TONGTHU FROM CT_HoaDonBanHang CT, HoaDonBanHang HD
	WHERE MaSP = @maSP AND CT.MaHD = HD.MaHD AND MONTH(HD.NgayLap) = @month AND YEAR(HD.NgayLap) = @year
END

GO
