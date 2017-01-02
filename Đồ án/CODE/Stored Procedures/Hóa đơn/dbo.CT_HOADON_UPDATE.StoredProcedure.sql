USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_HOADON_UPDATE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HOADON_UPDATE]
  (
	@MaHD varchar(10),
	@MASP VARCHAR (10),
	
	@SOLUONG INT,
	@THANHTIEN INT,
	@GHICHU NVARCHAR(100)

	)
	AS
	BEGIN
		UPDATE CT_HoaDonBanHang SET MaHD = @MaHD, MaSP = @MASP, SoLuong =@SOLUONG, ThanhTien = @THANHTIEN, GhiChu = @GHICHU
		WHERE MaHD = @MaHD AND MaSP = @MASP
	END
GO
