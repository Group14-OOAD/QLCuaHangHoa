USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_UPDATE]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_DONDATHANG_UPDATE]
  (
	@MaDDH varchar(10),
	@MASP VARCHAR (10),

	@SOLUONG INT,
	@THANHTIEN INT
	

	)
	AS
	BEGIN
		UPDATE CT_DonDatHang SET  SoLuong =@SOLUONG, ThanhTien = @THANHTIEN
		WHERE MaDDH = @MaDDH AND MaSP = @MASP
	END

GO
