USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CT_PHIEUGIAOHANG_TIMKIEM]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PHIEUGIAOHANG_TIMKIEM]
(
	@MaPGH varchar(10),
	@MASP VARCHAR (10),

	@SOLUONG INT,
	@THANHTIEN INT,
	@GHICHU NVARCHAR(100)
)
AS
 BEGIN

	if(@MaPGH is not null and @MaPGH <> '')
	begin
	SELECT * from CT_PhieuGiaoHang where MaPGH like '%'+@MaPGH+ '%'
	end
	
	if(@MASP is not null and @MASP <> '')
	begin
	SELECT * from CT_PhieuGiaoHang where MaSP like '%' + @MASP + '%'
	end
	if(@SOLUONG is not null and @SOLUONG <> '')
	begin
	SELECT * from CT_PhieuGiaoHang where @SOLUONG like '%' + @SOLUONG + '%'
	end
	if(@THANHTIEN is not null and @THANHTIEN <> '')
	begin
	SELECT * from CT_PhieuGiaoHang where @THANHTIEN like '%' + @THANHTIEN + '%'
	end
	--if(@sdt is not null and @sdt <> '')
	--begin
	-- * from KHACHHANG where SODT like '%' + @sdt + '%'
	--end
	
	
END
GO
