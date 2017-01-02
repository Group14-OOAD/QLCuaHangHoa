USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_TIMKIEM]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_DONDATHANG_TIMKIEM]
(
	@MaDDH varchar(10),
	@MASP VARCHAR (10),

	@SOLUONG INT,
	@THANHTIEN INT,
	@GHICHU NVARCHAR(100)
)
AS
 BEGIN

	if(@MaDDH is not null and @MaDDH <> '')
	begin
	SELECT * from CT_DonDatHang where MaDDH like '%'+@MaDDH+ '%'
	end
	
	if(@MASP is not null and @MASP <> '')
	begin
	SELECT * from CT_DonDatHang where MaSP like '%' + @MASP + '%'
	end
	if(@SOLUONG is not null and @SOLUONG <> '')
	begin
	SELECT * from CT_DonDatHang where @SOLUONG like '%' + @SOLUONG + '%'
	end
	if(@THANHTIEN is not null and @THANHTIEN <> '')
	begin
	SELECT * from CT_DonDatHang where @THANHTIEN like '%' + @THANHTIEN + '%'
	end
	--if(@sdt is not null and @sdt <> '')
	--begin
	-- * from KHACHHANG where SODT like '%' + @sdt + '%'
	--end
	
	
END
GO
