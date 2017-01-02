USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_TIMKIEM]    Script Date: 1/2/2017 8:28:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DONDATHANG_TIMKIEM]
(
	@MaDDH varchar(10),
	@NgayLap date,
	@MaNV varchar(10),
	@MaKH varchar (10),
	@TongTien int,
	@NgayGiaoDuKien date,
	@GhiChu nvarchar(100)
)
AS
 BEGIN

	if(@MaDDH is not null and @MaDDH <> '')
	begin
	SELECT * from DonDatHang where MaDDH like '%'+@MaDDH+ '%'
	end
	
	if(@MaNV is not null and @MaNV <> '')
	begin
	SELECT * from DonDatHang where MaNV like '%' + @MaNV + '%'
	end
	if(@MaKH is not null and @MaKH <> '')
	begin
	SELECT * from DonDatHang where @MaKH like '%' + @MaKH + '%'
	end
	--if(@sdt is not null and @sdt <> '')
	--begin
	-- * from KHACHHANG where SODT like '%' + @sdt + '%'
	--end
	
	
END
GO
