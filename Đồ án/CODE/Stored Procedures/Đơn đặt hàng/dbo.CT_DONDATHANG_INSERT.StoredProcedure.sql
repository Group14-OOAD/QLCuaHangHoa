USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_INSERT]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_DONDATHANG_INSERT]
  (
	@MaDDH varchar(10),
	@MASP VARCHAR (10),

	@SOLUONG INT,
	@THANHTIEN INT,
	@GHICHU NVARCHAR(100)
	) 

	AS
	BEGIN
		
		Insert into CT_DonDatHang(MaDDH,MaSP,SoLuong, ThanhTien, GhiChu) values( @MaDDH, @MASP, @SOLUONG, @THANHTIEN, @GHICHU)
	END

GO
