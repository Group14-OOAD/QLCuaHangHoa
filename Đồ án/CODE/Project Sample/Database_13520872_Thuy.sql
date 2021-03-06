USE [QuanLi]
GO
/****** Object:  StoredProcedure [dbo].[CONGNO_LAYCONGNO]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CONGNO_LAYCONGNO]
(
	@MAKH VARCHAR (10)
	
)

AS
BEGIN
	
	SELECT a.NoKyCuoi
	FROM BaoCaoCongNoKH A, KhachHang B
	WHERE A.MaKH = B.MaKH
	
END
GO
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_DELETE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[CT_DONDATHANG_DELETE]
	 (
		@MaDDH varchar(10),
		@MASP VARCHAR(10)
	 )
	 AS
	 BEGIN
		DELETE FROM CT_DONDATHANG WHERE MaDDH=@MaDDH AND MaSP = @MASP

	 END

GO
/****** Object:  StoredProcedure [dbo].[ct_dondathang_deletetheomaddh]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ct_dondathang_deletetheomaddh]
	 (
		@MaDDH varchar(10)
		
	 )
	 AS
	 BEGIN
		DELETE FROM CT_DONDATHANG WHERE MaDDH=@MaDDH 

	 END
GO
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_INSERT]    Script Date: 12/31/2016 11:20:05 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ct_dondathang_ktmasp]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ct_dondathang_ktmasp]
	 @masp varchar(10),
	 @maddh varchar(10)
	 as
	 begin
		select MaSP
		from CT_DonDatHang
		where MaSP=@masp and MaDDH=@maddh
	 end
GO
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_LAYDS]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_DONDATHANG_LAYDS]

AS
BEGIN
	SELECT A.MaDDH, b.MaSP,b.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM DONDATHANG A, SANPHAM B, CT_DonDatHang C
	WHERE A.MaDDH = C.MaDDH AND C.MaSP= B.MaSP
END
GO
/****** Object:  StoredProcedure [dbo].[ct_dondathang_laydstheomaddh]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ct_dondathang_laydstheomaddh]
 @maddh nvarchar(10)
 AS
BEGIN
	SELECT A.MaDDH,b.MaSP, B.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM DONDATHANG A, SANPHAM B, CT_DonDatHang C
	WHERE A.MaDDH = C.MaDDH AND C.MaSP= B.MaSP and a.MaDDH =@maddh
END
GO
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_LAYSL_THEOMASP]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CT_DONDATHANG_LAYSL_THEOMASP]
(
	@MASP VARCHAR (10),
	@maddh varchar(10)
	
)

AS
BEGIN
	
	SELECT a.SoLuong
	FROM CT_DonDatHang a
	WHERE a.MaDDH=@maddh and a.MaSP=@MASP
	
END
GO
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_TIMKIEM]    Script Date: 12/31/2016 11:20:05 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CT_DONDATHANG_UPDATE]    Script Date: 12/31/2016 11:20:05 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CT_HOADON_DELETE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HOADON_DELETE]
	 (
		@MaHD varchar(10),
		@MASP VARCHAR(10)

	 )
	 AS
	 BEGIN
		DELETE FROM CT_HoaDonBanHang WHERE MaHD=@MaHD AND MaSP = @MASP

	 END
GO
/****** Object:  StoredProcedure [dbo].[ct_hoadon_deletetheomahd]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ct_hoadon_deletetheomahd]
	 (
		@Mahd varchar(10)
		
	 )
	 AS
	 BEGIN
		DELETE FROM CT_HoaDonBanHang WHERE MaHD=@Mahd

	 END
GO
/****** Object:  StoredProcedure [dbo].[CT_HOADON_INSERT]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HOADON_INSERT]
  (
	@MaHD varchar(10),
	@MASP VARCHAR (10),

	@SOLUONG INT,
	@THANHTIEN INT,
	@GHICHU NVARCHAR(100)
	) 

	AS
	BEGIN
	
		Insert into CT_HoaDonBanHang(MaHD,MaSP,SoLuong, ThanhTien, GhiChu) values( @MaHD, @MASP, @SOLUONG, @THANHTIEN, @GHICHU)
	END
GO
/****** Object:  StoredProcedure [dbo].[CT_HOADON_LAYDS]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HOADON_LAYDS]

AS
BEGIN
	SELECT A.MaHD, c.MaSP, c.TenSP, c.DonGia,b.SoLuong, B.ThanhTien
	FROM HoaDonBanHang A, CT_HoaDonBanHang B, SanPham C
	WHERE A.MaHD = B.MaHD AND B.MaSP = C.MaSP
END
GO
/****** Object:  StoredProcedure [dbo].[ct_hoadon_laydstheohd]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ct_hoadon_laydstheohd]
 @mahd nvarchar(10)
 AS
BEGIN
	SELECT A.MaHD,b.MaSP, B.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM HoaDonBanHang A, SANPHAM b, CT_HoaDonBanHang c
	WHERE a.MaHD = c.MaHD AND C.MaSP= B.MaSP and a.MaHD=@mahd
END

GO
/****** Object:  StoredProcedure [dbo].[CT_HOADON_TIMKIEM]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_HOADON_TIMKIEM]
(
	@MaHD varchar(10),
	@MASP VARCHAR (10),

	@SOLUONG INT,
	@THANHTIEN INT,
	@GHICHU NVARCHAR(100)
)
AS
 BEGIN

	if(@MaHD is not null and @MaHD <> '')
	begin
	SELECT * from CT_HoaDonBanHang where MaHD like '%'+@MaHD+ '%'
	end
	
	if(@MASP is not null and @MASP <> '')
	begin
	SELECT * from CT_HoaDonBanHang where MaSP like '%' + @MASP + '%'
	end
	if(@SOLUONG is not null and @SOLUONG <> '')
	begin
	SELECT * from CT_HoaDonBanHang where @SOLUONG like '%' + @SOLUONG + '%'
	end
	if(@THANHTIEN is not null and @THANHTIEN <> '')
	begin
	SELECT * from CT_HoaDonBanHang where @THANHTIEN like '%' + @THANHTIEN + '%'
	end
	--if(@sdt is not null and @sdt <> '')
	--begin
	-- * from KHACHHANG where SODT like '%' + @sdt + '%'
	--end
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[CT_HOADON_UPDATE]    Script Date: 12/31/2016 11:20:05 PM ******/
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
/****** Object:  StoredProcedure [dbo].[ct_hoadonsi_layds]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ct_hoadonsi_layds]
@maddh nvarchar(10)
as
begin
	SELECT c.MaSP, b.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM DONDATHANG A, SANPHAM B, CT_DonDatHang C
	WHERE A.MaDDH = C.MaDDH AND C.MaSP= B.MaSP and a.MaDDH =@maddh
end
GO
/****** Object:  StoredProcedure [dbo].[CT_PHIEUGIAOHANG_DELETE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PHIEUGIAOHANG_DELETE]
	 (
		@MaPGH varchar(10),
		@MASP VARCHAR(10)
	 )
	 AS
	 BEGIN
		DELETE FROM CT_PhieuGiaoHang WHERE MaPGH=@MaPGH AND MaSP = @MASP

	 END
GO
/****** Object:  StoredProcedure [dbo].[ct_phieugiaohang_deletetheomapgh]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[ct_phieugiaohang_deletetheomapgh]
	 (
		@Mapgh varchar(10)
		
	 )
	 AS
	 BEGIN
		DELETE FROM CT_PhieuGiaoHang WHERE MaPGH=@Mapgh

	 END
GO
/****** Object:  StoredProcedure [dbo].[CT_PHIEUGIAOHANG_INSERT]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PHIEUGIAOHANG_INSERT]
  (
	@MaPGH varchar(10),
	@MASP VARCHAR (10),

	@SOLUONG INT,
	@THANHTIEN INT,
	@GHICHU NVARCHAR(100)
	) 

	AS
	BEGIN
		
		Insert into CT_PhieuGiaoHang(MaPGH,MaSP,SoLuong, ThanhTien, GhiChu) values( @MaPGH, @MASP, @SOLUONG, @THANHTIEN, @GHICHU)
	END

GO
/****** Object:  StoredProcedure [dbo].[ct_phieugiaohang_ktsldagiao]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ct_phieugiaohang_ktsldagiao]
  (
	@maddh varchar(10),
	@masp varchar (10)  
	)
	as
	begin
		select sum(a.SoLuong)
  from CT_PhieuGiaoHang a, PhieuGiaoHang b
  where a.MaPGH=b.MaPGH and b.MaDDH=@maddh and a.MaSP=@masp
	end
GO
/****** Object:  StoredProcedure [dbo].[CT_PHIEUGIAOHANG_LAYDS]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PHIEUGIAOHANG_LAYDS]

AS
BEGIN
	SELECT A.MaPGH, b.MaSP,c.TenSP, B.SoLuong, c.DonGia,b.ThanhTien
	FROM PhieuGiaoHang A, CT_PhieuGiaoHang B, SanPham C
	WHERE A.MaPGH = B.MaPGH AND B.MaSP = C.MaSP
END
GO
/****** Object:  StoredProcedure [dbo].[ct_phieugiaohang_laydstheomapgh]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ct_phieugiaohang_laydstheomapgh]
(
@mapgh nvarchar(10)
)
 AS
BEGIN
	SELECT a.MaPGH,b.MaSP, B.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM  PhieuGiaoHang A, SANPHAM B, CT_PhieuGiaoHang C
	WHERE A.MaPGH = c.MaPGH AND C.MaSP= B.MaSP and a.MaPGH=@mapgh
END
GO
/****** Object:  StoredProcedure [dbo].[ct_phieugiaohang_laysl_theomasp]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ct_phieugiaohang_laysl_theomasp]
(
	@MASP VARCHAR (10),
	@mapgh varchar(10)
	
)

AS
BEGIN
	
	SELECT a.SoLuong
	FROM CT_PhieuGiaoHang a
	WHERE a.MaPGH=@mapgh and a.MaSP=@MASP
	
END
GO
/****** Object:  StoredProcedure [dbo].[CT_PHIEUGIAOHANG_TIMKIEM]    Script Date: 12/31/2016 11:20:05 PM ******/
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
/****** Object:  StoredProcedure [dbo].[CT_PHIEUGIAOHANG_UPDATE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CT_PHIEUGIAOHANG_UPDATE]
  (
	@MaPGH varchar(10),
	@MASP VARCHAR (10),

	@SOLUONG INT,
	@THANHTIEN INT,
	@GHICHU NVARCHAR(100)

	)
	AS
	BEGIN
		UPDATE CT_PhieuGiaoHang SET MaPGH = @MaPGH, MaSP = @MASP, SoLuong =@SOLUONG, ThanhTien = @THANHTIEN, GhiChu = @GHICHU
		WHERE MAPGH = @MaPGH AND MaSP = @MASP
	END
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_DELETE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	 CREATE PROCEDURE [dbo].[DONDATHANG_DELETE]
	 (
		@MaDDH varchar(10)
	 )
	 AS
	 BEGIN
		DELETE FROM DONDATHANG WHERE MaDDH=@MaDDH

	 END
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_INSERT]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DONDATHANG_INSERT]
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
		Insert into DonDatHang(MaDDH,NgayLap,MaNV,MaKH,TongTien, NgayGiaoDuKien, GhiChu) values(@MaDDH,  @NgayLap, @MaNV, @MaKH, @TongTien, @NgayGiaoDuKien, @GhiChu)
	END

GO
/****** Object:  StoredProcedure [dbo].[dondathang_ktmaDDH]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[dondathang_ktmaDDH]
@maddh varchar (10)
as
begin
	select MaDDH
	from DonDatHang
	where MaDDH =@maddh
end
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_LAYDS]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DONDATHANG_LAYDS]

AS
BEGIN
	SELECT A.MaDDH, B.HoTen, C.HoTen, A.TongTien, A.NgayLap, a.NgayGiaoDuKien
	FROM DONDATHANG A, NHANVIEN B, KHACHHANG C
	WHERE A.MaNV=B.MaNV AND A.MaKH=C.MaKH
END
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_LAYDSmaddh]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DONDATHANG_LAYDSmaddh]

AS
BEGIN
	SELECT MaDDH
	FROM DONDATHANG 
	
END
GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_TIMKIEM]    Script Date: 12/31/2016 11:20:05 PM ******/
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
/****** Object:  StoredProcedure [dbo].[DONDATHANG_UPDATE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DONDATHANG_UPDATE]
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
		UPDATE DonDatHang SET DonDatHang.NgayLap = @NgayLap, MaNV=@MaNV, MaKH=@MaKH, TongTien=@TongTien, NgayGiaoDuKien=@NgayGiaoDuKien, GhiChu=@GhiChu
		WHERE MaDDH=@MaDDH
	END

GO
/****** Object:  StoredProcedure [dbo].[DONDATHANG_UPDATETONGTIEN]    Script Date: 12/31/2016 11:20:05 PM ******/
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
/****** Object:  StoredProcedure [dbo].[HOADON_DELETE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[HOADON_DELETE]
	 (
		@MaHD varchar(10)
	 )
	 AS
	 BEGIN
		DELETE FROM HoaDonBanHang WHERE MaHD=@MaHD

	 END

GO
/****** Object:  StoredProcedure [dbo].[HOADON_INSERT]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HOADON_INSERT]
  (
	@MaHD varchar(10),
	@NgayLap date,
	@MaNV varchar(10),
	@MaKH varchar (10),
	@TongTien int,
	
	@GhiChu nvarchar(100)

	) 

	AS
	BEGIN
		
		Insert into HoaDonBanHang(MaHD,NgayLap,MaNV,MaKH,TongTien, GhiChu) values( @MaHD, @NgayLap, @MaNV, @MaKH, @TongTien, @GhiChu)
	END
GO
/****** Object:  StoredProcedure [dbo].[hoadon_ktmaHD]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[hoadon_ktmaHD]
@mahd varchar (10)
as
begin
	select MaHD
	from HoaDonBanHang
	where MaHD=@mahd
end
GO
/****** Object:  StoredProcedure [dbo].[HOADON_LAYDS]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HOADON_LAYDS]

AS
BEGIN
	SELECT A.MaHD, A.NgayLap, B.HoTen, C.HoTen, A.TongTien
	FROM HoaDonBanHang A, NHANVIEN B, KHACHHANG C
	WHERE A.MaNV=B.MaNV AND A.MaKH=C.MaKH
END
GO
/****** Object:  StoredProcedure [dbo].[HOADON_UPDATE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HOADON_UPDATE]
  (
	@MaHD varchar(10),
	@NgayLap date,
	@MaNV varchar(10),
	@MaKH varchar (10),
	@TongTien int,
	@GhiChu nvarchar(100)

	)
	AS
	BEGIN
		UPDATE HoaDonBanHang SET NgayLap = @NgayLap, MaNV=@MaNV, MaKH=@MaKH, TongTien=@TongTien, GhiChu=@GhiChu
		WHERE MaHD =@MaHD
	END
GO
/****** Object:  StoredProcedure [dbo].[hoadon_update_tongtien]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[hoadon_update_tongtien]
@mahd NVARCHAR (10),
@TONGTIEN INT
AS
BEGIN
UPDATE HoaDonBanHang SET TongTien = @TONGTIEN WHERE Mahd=@mahd
END
GO
/****** Object:  StoredProcedure [dbo].[hoadonsi_laythongtintheomaddh]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[hoadonsi_laythongtintheomaddh]
@maddh varchar(10)
as
begin
	SELECT A.MaDDH,b.MaSP, B.TenSP, C.SoLuong, b.DonGia, c.ThanhTien
	FROM DONDATHANG A, SANPHAM B, CT_DonDatHang C
	WHERE A.MaDDH = C.MaDDH AND C.MaSP= B.MaSP and a.MaDDH =@maddh
end


	
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANG_DELETE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[KHACHHANG_DELETE]
	 (
		@MaKH varchar(10)
	 )
	 AS
	 BEGIN
		DELETE FROM KHACHHANG WHERE MAKH=@MaKH

	 END

GO
/****** Object:  StoredProcedure [dbo].[KHACHHANG_INSERT]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KHACHHANG_INSERT]
  (
	@MaKH varchar(10),
	@HoTen nvarchar(50),
	@DiaChi nvarchar(50),
	@SoDT int,
	@GhiChu nvarchar(100)

	) 

	AS
	BEGIN
		declare @return nvarchar(10), @MaKHCuoi varchar(10), @TemNumber nvarchar(10), @tempLen int, @nextnum int
		select top(1) @MaKHCuoi = MaKH from KHACHHANG order by MaKH desc 

		if(@MaKHCuoi is null)
			select @return = 'KH00000001'
		else
		begin
			select @tempLen = LEN (@MaKHCuoi)
			select @TemNumber = SUBSTRING(@MaKHCuoi,3,@tempLen-2) /*Lay chuoi so tring chuôi Makh*/
			select @nextnum = CONVERT(int, @TemNumber)+1

			select @return = case
			when LEN(convert(nvarchar, @nextnum))=1 then 'KH0000000'+ convert(nvarchar, @nextnum)
			when LEN(convert(nvarchar,@nextnum))=2  then 'KH000000' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=3  then 'KH00000' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=4  then 'KH0000' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=5  then 'KH000' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=6  then 'KH00' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=7  then 'KH0' + convert(nvarchar,@nextnum)
			when LEN(convert(nvarchar,@nextnum))=8  then 'KH' + convert(nvarchar,@nextnum)
		end
		end
		Insert into KHACHHANG(MaKH,HoTen,DiaChi,SoDT,GhiChu) values( @return, @HoTen, @Diachi , @SoDT,@GhiChu)
			
	END
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANG_LAYDS]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KHACHHANG_LAYDS]
 AS
SELECT * FROM KHACHHANG
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANG_TIMKIEM]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KHACHHANG_TIMKIEM]
@TuKhoa varchar(100)
 AS

 BEGIN
	SELECT * from KHACHHANG where (MAKH like '%'+ @TuKhoa+ '%')
							or	(HoTen like '%'+ @TuKhoa+ '%')
							or	(DiaChi like '%'+ @TuKhoa+ '%')
							or	(SODT like '%'+ @TuKhoa+ '%')
							or	(GhiChu like '%'+ @TuKhoa+ '%')
END
GO
/****** Object:  StoredProcedure [dbo].[KHACHHANG_TIMKIEM2]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KHACHHANG_TIMKIEM2]
(
	@MaKH varchar(10),
	@HoTen nvarchar(50),
	@DiaChi nvarchar(50),
	@SoDT int,
	@GhiChu nvarchar(100)
)
AS
 BEGIN

	if(@makh is not null and @makh <> '')
	begin
	SELECT * from KHACHHANG where MAKH like '%'+@makh+ '%'
	end
	if(@HoTen is not null and @HoTen <> '')
	begin
	SELECT * from KHACHHANG where HoTen like '%' + @HoTen + '%'
	end
	if(@diachi is not null and @diachi <> '')
	begin
	SELECT * from KHACHHANG where DIACHI like '%' + @diachi + '%'
	end
	if(@SoDT is not null and @SoDT <> '')
	begin
	SELECT * from KHACHHANG where SoDT like '%' + @SoDT + '%'
	end
	--if(@sdt is not null and @sdt <> '')
	--begin
	-- * from KHACHHANG where SODT like '%' + @sdt + '%'
	--end
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[KHACHHANG_UPDATE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KHACHHANG_UPDATE]
  (
	@MaKH varchar(10),
	@HoTen nvarchar(50),
	@DiaChi nvarchar(50),
	@SoDT int,
	@GhiChu nvarchar(100)

	)
	AS
	BEGIN
		UPDATE KHACHHANG SET KHACHHANG.HoTen = @HoTen, KHACHHANG.DiaChi = @DiaChi, KHACHHANG.SoDT = @SoDT, KHACHHANG.GhiChu = @GhiChu WHERE KHACHHANG.MaKH = @MaKH
	END
GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_Del]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[NHANVIEN_Del]
	(
		@maNhanVien VARCHAR(10)
	)
AS
BEGIN
	DELETE FROM NhanVien
	WHERE @maNhanVien LIKE NhanVien.MaNV
END



GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_getAll]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
create PROCEDURE [dbo].[NHANVIEN_getAll]

AS
BEGIN
	SELECT * FROM NhanVien
END



GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_getNhanVien]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[NHANVIEN_getNhanVien]
	(
		@maNhanVien VARCHAR(10)
	)
AS
BEGIN
	SELECT * FROM NhanVien
	WHERE @maNhanVien = MaNV
END



GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_Insert]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[NHANVIEN_Insert]
	(
		@maNhanVien VARCHAR(10),
		@hoTen NVARCHAR(50),
		@namSinh INT,
		@gioiTinh BIT,
		@soDT VARCHAR(15),
		@email VARCHAR(50),
		@username VARCHAR(50),
		@password VARCHAR(50),
		@maLoaiNV VARCHAR(20)
	)
AS
BEGIN
	INSERT INTO NhanVien VALUES(@maNhanVien, @hoTen, @namSinh,
								@gioiTinh, @soDT, @email, @username, @password, @maLoaiNV)
END



GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_Search]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[NHANVIEN_Search]
	(
		@maNhanVien VARCHAR(10) = '',
		@hoTen NVARCHAR(50) = '',
		@namSinh INT = 0,
		@maLoaiNV VARCHAR(20) = ''
	)
AS
BEGIN
	select * from NHANVIEN
	WHERE (MaNV LIKE '%'+ @maNhanVien + '%' OR @maNhanVien IS NULL or @maNhanVien = '')
		AND (HoTen LIKE '%' + @hoTen + '%' or @hoTen is null or @hoTen = '')
		AND (NamSinh = @namSinh or @namSinh = 0)
		AND (MaLoaiNV LIKE @maLoaiNV or @maLoaiNV is null or @maLoaiNV = '')
END



GO
/****** Object:  StoredProcedure [dbo].[NHANVIEN_Update]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
CREATE PROCEDURE [dbo].[NHANVIEN_Update]
	(
		@maNhanVien VARCHAR(10),
		@hoTen NVARCHAR(50),
		@namSinh INT,
		@gioiTinh BIT,
		@soDT VARCHAR(15),
		@email VARCHAR(50),
		@username VARCHAR(50),
		@password VARCHAR(50),
		@maLoaiNV VARCHAR(20)
	)
AS
BEGIN
	UPDATE NHANVIEN
	SET HoTen = @hoTen,
		NamSinh= @namSinh,
		GioiTinh = @gioiTinh,
		SoDT = @soDT,
		Email = @email,
		Username = @username,
		[Password] = @password,
		MaLoaiNV = @maLoaiNV
	WHERE @maNhanVien = MaNV
END



GO
/****** Object:  StoredProcedure [dbo].[PHIEUGIAOHANG_DELETE]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PHIEUGIAOHANG_DELETE]
	 (
		@MaPGH varchar(10)
	 )
	 AS
	 BEGIN
		DELETE FROM PhieuGiaoHang WHERE MaPGH=@MaPGH

	 END

GO
/****** Object:  StoredProcedure [dbo].[PHIEUGIAOHANG_INSERT]    Script Date: 12/31/2016 11:20:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	 CREATE PROCEDURE [dbo].[PHIEUGIAOHANG_INSERT]
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
		

		
		Insert into PhieuGiaoHang(MaPGH,NgayLap,MaNV,MaKH,TongTien, GhiChu, MaDDH) values( @MaPGH, @NgayLap, @MaNV, @MaKH, @TongTien, @GhiChu,@MADDH )
	END
GO
/****** Object:  StoredProcedure [dbo].[phieugiaohang_ktmaPGH]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[phieugiaohang_ktmaPGH]
@mapgh varchar (10)
as
begin
	select MaPGH
	from PhieuGiaoHang
	where MaPGH=@mapgh
end
GO
/****** Object:  StoredProcedure [dbo].[phieugiaohang_ktsoluong_ddh]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[phieugiaohang_ktsoluong_ddh]
@maddh varchar(10),
@masp varchar(10)
as
begin
	select a.SoLuong
	from CT_DonDatHang a
	where a.MaDDH=@maddh and a.MaSP=@masp
end
GO
/****** Object:  StoredProcedure [dbo].[PHIEUGIAOHANG_LAYDS]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PHIEUGIAOHANG_LAYDS]

AS
BEGIN
	SELECT A.MaPGH,A.MaDDH, B.HoTen, C.HoTen, A.NgayLap, A.TongTien 
	FROM PhieuGiaoHang A, NHANVIEN B, KHACHHANG C, DonDatHang D
	WHERE A.MaNV=B.MaNV AND A.MaKH=C.MaKH AND D.MaDDH=A.MaDDH
END
GO
/****** Object:  StoredProcedure [dbo].[PHIEUGIAOHANG_TIMKIEM]    Script Date: 12/31/2016 11:20:06 PM ******/
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
/****** Object:  StoredProcedure [dbo].[PHIEUGIAOHANG_UPDATE]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PHIEUGIAOHANG_UPDATE]
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
		UPDATE PhieuGiaoHang SET NgayLap = @NgayLap, MaNV=@MaNV, MaKH=@MaKH, TongTien=@TongTien, GhiChu=@GhiChu, MaPGH=@MaPGH
		WHERE MaPGH =@MaPGH
	END


GO
/****** Object:  StoredProcedure [dbo].[phieugiaohang_updatetongtien]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[phieugiaohang_updatetongtien]
@mapgh NVARCHAR (10),
@tongtien INT
AS
BEGIN
UPDATE PhieuGiaoHang SET TongTien = @TONGTIEN WHERE MaPGH=@mapgh
END
GO
/****** Object:  StoredProcedure [dbo].[PHIEUTHU_Del]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[PHIEUTHU_Del]
	(
		@MaPT VARCHAR(10)
	)
AS
BEGIN
	DELETE FROM PhieuThu
	WHERE @MaPT LIKE PhieuThu.MaPT
END



GO
/****** Object:  StoredProcedure [dbo].[SanPham_getAll]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SanPham_getAll]
 as
 select SanPham.MaSP, SanPham.TenSP, SanPham.DonVi, SanPham.DonGia, SanPham.SoLuong from SanPham
GO
/****** Object:  StoredProcedure [dbo].[sanpham_ktsoluong]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sanpham_ktsoluong]
  (
	@masp varchar(10)


	)
	AS
	BEGIN
		select SoLuong
		from SanPham
		where SanPham.MaSP=@masp
	END
GO
/****** Object:  StoredProcedure [dbo].[sanpham_layds]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sanpham_layds]
 as
 select SanPham.MaSP, SanPham.TenSP, SanPham.DonVi, SanPham.DonGia, SanPham.soluong from SanPham
GO
/****** Object:  StoredProcedure [dbo].[sanpham_theoddh]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[sanpham_theoddh]
(
@maddh nvarchar(10)
)
 AS
BEGIN
	select a.MaSP, a.TenSP, a.DonVi, a.DonGia, c.SoLuong
	from SanPham a,   CT_DonDatHang c
	where  a.MaSP=c.MaSP and c.MaDDH=@maddh
END
GO
/****** Object:  StoredProcedure [dbo].[sanpham_UPDATE]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[sanpham_UPDATE]
  (
	@Masp varchar(10),
	@tensp nvarchar(50),
	@donvi nvarchar(50),
	@dongia int,
	@GhiChu nvarchar(100),
	@maloaisp varchar(10),
	@soluong int


	)
	AS
	BEGIN
		UPDATE SanPham SET MaSP=@Masp, TenSP=@tensp, DonVi =@donvi, DonGia =@dongia, GhiChu =@GhiChu, MaLoaiSP = @maloaisp, SoLuong =@soluong where SanPham.MaSP=@Masp
	END

GO
/****** Object:  StoredProcedure [dbo].[sanpham_update_soluong]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sanpham_update_soluong]
(
	@masp varchar(10),
	@soluong int
)
as
begin
	update SanPham
	set SoLuong=@soluong
	where MaSP =@masp
end
GO
/****** Object:  Table [dbo].[BaoCaoCongNoKH]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaoCaoCongNoKH](
	[NgayLap] [date] NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[NoKyDau] [int] NULL,
	[PhatSinh] [int] NULL,
	[NoKyCuoi] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[NgayLap] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BaoCaoDoanhThu]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaoCaoDoanhThu](
	[NgayLap] [date] NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[TongChi] [int] NULL,
	[PhatSinh] [int] NULL,
	[TongThu] [int] NULL,
	[LoiNhuan] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[NgayLap] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BaoCaoTonKho]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BaoCaoTonKho](
	[NgayLap] [date] NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SLTonKyDau] [int] NULL,
	[SLNhap] [int] NULL,
	[SLXuat] [int] NULL,
	[SLPhatSinh] [int] NULL,
	[SLTonCuoiKy] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[NgayLap] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_DonDatHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_DonDatHang](
	[MaDDH] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_DonNhapHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_DonNhapHang](
	[MaDNH] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDNH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_HoaDonBanHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_HoaDonBanHang](
	[MaHD] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_HoaDonNhapHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_HoaDonNhapHang](
	[MaHD] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[Soluong] [int] NULL,
	[ThanhTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CT_PhieuGiaoHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_PhieuGiaoHang](
	[MaPGH] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[SLDaGiao] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPGH] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [varchar](10) NULL,
	[MaKH] [varchar](10) NULL,
	[TongTien] [int] NULL,
	[NgayGiaoDuKien] [date] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DonNhapHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DonNhapHang](
	[MaDNH] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [varchar](10) NULL,
	[MaNCC] [varchar](10) NULL,
	[TongTien] [int] NULL,
	[NgayGiaoDuKien] [date] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDNH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonBanHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonBanHang](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [varchar](10) NULL,
	[MaKH] [varchar](10) NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[ChietKhau] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HoaDonNhapHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDonNhapHang](
	[MaHD] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [varchar](10) NULL,
	[MaNCC] [varchar](10) NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](10) NOT NULL,
	[Ten] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SoDT] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NamSinh] [int] NULL,
	[GioiTinh] [bit] NULL,
	[SoDT] [varchar](15) NULL,
	[Email] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[MaLoaiNV] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuChi]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuChi](
	[MaPC] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [varchar](10) NULL,
	[MaKH] [varchar](10) NULL,
	[SoTienNo] [int] NULL,
	[SoTienThu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuGiaoHang]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuGiaoHang](
	[MaPGH] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [varchar](10) NULL,
	[MaKH] [varchar](10) NULL,
	[TongTien] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[MaDDH] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhieuThu]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhieuThu](
	[MaPT] [varchar](10) NOT NULL,
	[NgayLap] [date] NULL,
	[MaNV] [varchar](10) NULL,
	[MaKH] [varchar](10) NULL,
	[SoTienNo] [int] NULL,
	[SoTienThu] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/31/2016 11:20:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[DonVi] [nvarchar](20) NULL,
	[DonGia] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[MaLoaiSP] [varchar](20) NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CT_DonDatHang] ([MaDDH], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'dh001', N'001', 500, 50000, N'0')
INSERT [dbo].[CT_DonDatHang] ([MaDDH], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'dh002', N'001', 300, NULL, NULL)
INSERT [dbo].[CT_DonDatHang] ([MaDDH], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'dh002', N'002', 500, NULL, NULL)
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'?', N'001', 500, 50000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'cvcv', N'002', 2, 40000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'df', N'002', 2, 40000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'df', N'003', 1, 15000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'dfdf', N'003', 1, 15000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'dfgdg', N'001', 500, 0, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'dg', N'002', 1, 20000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'dg', N'003', 2, 30000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'dgdg', N'001', 500, 50000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'hbhj', N'001', 500, 50000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'hfvh', N'003', 1, 15000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'ry', N'002', 6, 120000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'ry', N'003', 5, 75000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'sdfsdf', N'001', 1, 5000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'sdsd', N'002', 3, 60000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'sdsd', N'003', 1, 15000, N'')
INSERT [dbo].[CT_HoaDonBanHang] ([MaHD], [MaSP], [SoLuong], [ThanhTien], [GhiChu]) VALUES (N'sdsdf', N'001', 500, 50000, N'')
INSERT [dbo].[CT_PhieuGiaoHang] ([MaPGH], [MaSP], [SoLuong], [ThanhTien], [GhiChu], [SLDaGiao]) VALUES (N'fcbfb', N'001', 500, 2500000, N'', NULL)
INSERT [dbo].[CT_PhieuGiaoHang] ([MaPGH], [MaSP], [SoLuong], [ThanhTien], [GhiChu], [SLDaGiao]) VALUES (N'fgdg', N'001', 0, 0, N'', NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaNV], [MaKH], [TongTien], [NgayGiaoDuKien], [GhiChu]) VALUES (N'dh001', NULL, N'nv001', N'kh001', NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaNV], [MaKH], [TongTien], [NgayGiaoDuKien], [GhiChu]) VALUES (N'dh002', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayLap], [MaNV], [MaKH], [TongTien], [NgayGiaoDuKien], [GhiChu]) VALUES (N'sdfsf', CAST(N'2016-12-31' AS Date), N'nv001', N'kh001', 0, CAST(N'2016-12-31' AS Date), N'')
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'?', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'?hfaf', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'bbb', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'bhjmb', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'cbc', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'cggf', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'cvcv', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'df', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'dfdf', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'dfgdfg', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'dfgdg', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'dfsdf', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'dg', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'dgdg', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 35000, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'dgfdg', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'ds', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'dxgbxcxv', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'fdg', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'gdg', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'gdgd', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'ghbhj', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'gkhh', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'h?n', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'hbhj', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'hbjj', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'hd001', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'hd003', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'hd004', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'hd005', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'hfhfh', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'hfvh', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'hjn', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'j', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'jbjbjm', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'jutki', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'nkn,', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'nmn', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'ry', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sàafa', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sdfsdf', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sdfsf', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sdfsfs', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sdsd', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sdsdf', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sfsf', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sfsfd', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sfsfsas', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sjfjsdnfs', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'sxvxvx', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'tyut', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'uhh', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'uhrru', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'ukyuil', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'xbcx', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'xvxcb', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'zcxzc', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[HoaDonBanHang] ([MaHD], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [ChietKhau]) VALUES (N'zxcz', CAST(N'2016-12-29' AS Date), N'nv001', N'kh001', 0, N'', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [DiaChi], [SoDT], [GhiChu]) VALUES (N'kh001', N'loc', N'111', 1634808817, N'a')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NamSinh], [GioiTinh], [SoDT], [Email], [Username], [Password], [MaLoaiNV]) VALUES (N'nv001', N'thuy', 1995, 0, N'01654596568', NULL, NULL, NULL, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NamSinh], [GioiTinh], [SoDT], [Email], [Username], [Password], [MaLoaiNV]) VALUES (N'nv002', N'loc', 1991, 1, N'01634808817', NULL, NULL, NULL, N'1')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [NamSinh], [GioiTinh], [SoDT], [Email], [Username], [Password], [MaLoaiNV]) VALUES (N'nv003', N'ngoc', 1985, 0, N'016345689', NULL, NULL, NULL, N'1')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'bjnb', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'cfsfsfs', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'czcz', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'dsd', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'fcbfb', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'fg', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'fgdg', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'fgfg', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'fs', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'gf', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'gh', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'gh001', NULL, NULL, NULL, 5000, NULL, N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'hg', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'hjh', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'hk', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'nm ', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'uiu', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'v xvxv', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'vcv', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'vhvh', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'vxv', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[PhieuGiaoHang] ([MaPGH], [NgayLap], [MaNV], [MaKH], [TongTien], [GhiChu], [MaDDH]) VALUES (N'XCXVX', CAST(N'2016-12-30' AS Date), N'nv001', N'kh001', 0, N'', N'dh001')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonVi], [DonGia], [GhiChu], [MaLoaiSP], [SoLuong]) VALUES (N'001', N'cẩm chướng', N'cành', 5000, N'ghichu_a', N'mla', 77)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonVi], [DonGia], [GhiChu], [MaLoaiSP], [SoLuong]) VALUES (N'002', N'hoa lan', N'cành', 20000, N'ghichu_b', N'mlb', 186)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonVi], [DonGia], [GhiChu], [MaLoaiSP], [SoLuong]) VALUES (N'003', N'hoa hồng', N'cành', 15000, N'ghichu_c', N'mlc', 197)
ALTER TABLE [dbo].[BaoCaoCongNoKH]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[BaoCaoDoanhThu]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BaoCaoTonKho]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_DonDatHang]  WITH CHECK ADD FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[CT_DonDatHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_DonNhapHang]  WITH CHECK ADD FOREIGN KEY([MaDNH])
REFERENCES [dbo].[DonNhapHang] ([MaDNH])
GO
ALTER TABLE [dbo].[CT_DonNhapHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_HoaDonBanHang]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDonBanHang] ([MaHD])
GO
ALTER TABLE [dbo].[CT_HoaDonBanHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_HoaDonNhapHang]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDonNhapHang] ([MaHD])
GO
ALTER TABLE [dbo].[CT_HoaDonNhapHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[CT_PhieuGiaoHang]  WITH CHECK ADD FOREIGN KEY([MaPGH])
REFERENCES [dbo].[PhieuGiaoHang] ([MaPGH])
GO
ALTER TABLE [dbo].[CT_PhieuGiaoHang]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[DonNhapHang]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[DonNhapHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDonNhapHang]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[HoaDonNhapHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuChi]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuChi]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuGiaoHang]  WITH CHECK ADD FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[PhieuGiaoHang]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuGiaoHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
