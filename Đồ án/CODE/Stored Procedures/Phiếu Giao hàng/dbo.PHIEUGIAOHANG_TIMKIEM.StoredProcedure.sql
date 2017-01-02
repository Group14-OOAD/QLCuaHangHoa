USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[PHIEUGIAOHANG_TIMKIEM]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PHIEUGIAOHANG_TIMKIEM]
(
	@MaPGH varchar(10),
	@NgayLap date,
	@MaNV varchar(10),
	@MaKH varchar (10),
	@TongTien int,
	
	@GhiChu nvarchar(100),
	@MADDH VARCHAR(10)
)
AS
 BEGIN

	if(@MaPGH is not null and @MaPGH <> '')
	begin
	SELECT * from PhieuGiaoHang where MaPGH like '%'+@MaPGH+ '%'
	end
	
	if(@MaNV is not null and @MaNV <> '')
	begin
	SELECT * from PhieuGiaoHang where MaNV like '%' + @MaNV + '%'
	end
	if(@MaKH is not null and @MaKH <> '')
	begin
	SELECT * from PhieuGiaoHang where @MaKH like '%' + @MaKH + '%'
	end
	if(@MADDH is not null and @MADDH <> '')
	begin
	SELECT * from PhieuGiaoHang where @MADDH like '%' + @MADDH + '%'
	end
	--if(@sdt is not null and @sdt <> '')
	--begin
	-- * from KHACHHANG where SODT like '%' + @sdt + '%'
	--end
	
	
END
GO
