Create Database QuanLiCuaHangHoa
use QuanLiCuaHangHoa

Create Table NhanVien(
	MaNV char(10) Primary key,
	HoTen nvarchar(50),
	GioiTinh bit,
	SoDT int,
	Email char(50),
	Username char(50),
	Password char(50),
	MaLoaiNV char(20)
)

Create Table SanPham (
	MaSP char(10) Primary key,
	TenSP nvarchar(50),
	DonVi nvarchar(20),
	DonGia int,
	GhiChu nvarchar(100),
	MaLoaiSP char(20),

) 

Create Table KhachHang (
	MaKH char(10) Primary key,
	HoTen nvarchar(50),
	DiaChi nvarchar(50),
	SoDT int,
	GhiChu nvarchar(100),
) 

Create Table NhaCungCap (
	MaNCC char(10) Primary key,
	Ten nvarchar(50),
	DiaChi nvarchar(50),
	SoDT int,
	GhiChu nvarchar(100),
)

Create Table DonDatHang (
	MaDDH char(10) Primary key,
	NgayLap date,
	MaNV char(10),
	MaKH char(10),
	TongTien int,
	NgayGiaoDuKien date,
	GhiChu nvarchar(100)
	Foreign key (MaKH) References   KhachHang(MaKH),
	Foreign key (MaNV) References	NhanVien(MaNV)
)
Create Table CT_DonDatHang (
	MaDDH char(10),
	MaSP char(10),
	SoLuong int,
	ThanhTien int,
	GhiChu nvarchar(100),
	Primary key( MaDDH, MaSp),
	Foreign key (MaDDH) References DonDatHang(MaDDH),
	Foreign key (MaSP) References SanPham(MaSP),
)

Create Table PhieuGiaoHang (
	MaPGH char(10) Primary key,
	NgayLap date,
	MaNV char(10),
	MaKH char(10),
	TongTien int,
	GhiChu nvarchar(100),
	Foreign key (MaNV) References NhanVien(MaNV),
	Foreign key (MaKH) References KhachHang(MaKH)
)
Create Table CT_PhieuGiaoHang (
	MaPGH char(10),
	MaSP char(10),
	SoLuong int,
	ThanhTien int,
	GhiChu nvarchar(100),
	Primary key (MaPGH,MaSp),
	Foreign key (MaPGH) References PhieuGiaoHang(MaPGH),
	Foreign key (MaSP) References SanPham(MaSP)
)

Create Table HoaDonBanHang (
	MaHD char(10) Primary key,
	NgayLap date,
	MaNV char(10),
	MaKH char(10),
	TongTien int,
	GhiChu nvarchar(100),
	Foreign key (MaNV) References NhanVien(MaNV),
	Foreign key (MaKH) References KhachHang(MaKH)
)
Create Table CT_HoaDonBanHang (
	MaHD char(10),
	MaSP char(10),
	SoLuong int,
	ThanhTien int,
	GhiChu nvarchar(100)
	Primary key (MaHD, MaSp),
	Foreign key (MaHD) References HoaDonBanHang (MaHD),
	Foreign key (MaSP) References SanPham(MaSP)
)

Create Table DonNhapHang (
	MaDNH char(10) Primary key,
	NgayLap Date,
	MaNV char(10),
	MaNCC char(10),
	TongTien int ,
	NgayGiaoDuKien date,
	GhiChu nvarchar(100),
	Foreign key (MaNV) References NhanVien (MaNV),
	Foreign key (MaNCC) References NhaCungCap (MaNCC)
)
Create Table CT_DonNhapHang (
	MaDNH char(10),
	MaSP char(10),
	SoLuong int,
	ThanhTien int ,
	GhiChu nvarchar(100),
	Primary key (MaDNH, MaSP),
	Foreign key (MaDNH) References DonNhapHang (MaDNH),
	Foreign key (MaSP) References SanPham (MaSP),
)

Create Table HoaDonNhapHang (
	MaHD char(10) Primary key,
	NgayLap date,
	MaNV char(10),
	MaNCC char(10),
	TongTien int,
	GhiChu nvarchar(100),
	Foreign key (MaNV) References NhanVien (MaNV),
	Foreign key (MaNCC) References NhaCungCap (MaNCC),
)
Create Table CT_HoaDonNhapHang (
	MaHD char(10),
	MaSP  char(10),
	Soluong int,
	ThanhTien int,
	GhiChu nvarchar(100),
	Primary key (MaHD,MaSp),
	Foreign key (MaHD) References HoaDonNhapHang (MaHD),
	Foreign key (MaSP) References SanPham (MaSP)
)

Create Table PhieuThu (
	MaPT char(10) Primary key,
	NgayLap date,
	MaNV char(10),
	MaKH char(10),
	SoTienNo int,
	SoTienThu int,
	Foreign key (MaNV) References NhanVien(MaNV),
	Foreign key (MaKH) References KhachHang(MaKH)
)
Create Table PhieuChi (
	MaPC char(10)  Primary key,
	NgayLap date,
	MaNV char(10),
	MaKH char(10),
	SoTienNo int,
	SoTienThu int,
	Foreign key (MaNV) References NhanVien(MaNV),
	Foreign key (MaKH) References KhachHang(MaKH)
)
Create Table BaoCaoTonKho (
	NgayLap date,
	MaSP char(10),
	SLTonKyDau int,
	SLNhap int,
	SLXuat int,
	SLPhatSinh int,
	SLTonCuoiKy int,
	GhiChu nvarchar(100),
	Primary key (NgayLap, MaSP),
	Foreign key (MaSP) References SanPham(MaSP)
)
 Create Table BaoCaoDoanhThu (
	NgayLap date,
	MaSP char(10),
	TongChi int,
	PhatSinh int,
	TongThu int,
	LoiNhuan int,
	GhiChu nvarchar(100),
	Primary key (NgayLap, MaSP),
	Foreign key (MaSP) References SanPham(MaSP)
 )
 Create Table BaoCaoCongNoKH (
	NgayLap date,
	MaKH char(10),
	NoKyDau int,
	PhatSinh int,
	NoKyCuoi int,
	GhiChu nvarchar(100),
	Primary key (NgayLap, MaKH),
	Foreign key (MaKH) References KhachHang(MaKH)
 )
  