Create Database QuanLiCuaHangHoa
use QuanLiCuaHangHoa

Create Table NhanVien(
	MaNV varchar(10) Primary key,
	HoTen nvarchar(50),
	NamSinh int,
	GioiTinh bit,
	SoDT varchar(15),
	Email varchar(50),
	Username varchar(50),
	Password varchar(50),
	MaLoaiNV varchar(20)
)

Create Table SanPham (
	MaSP varchar(10) Primary key,
	TenSP nvarchar(50),
	DonVi nvarchar(20),
	DonGia int,
	GhiChu nvarchar(100),
	MaLoaiSP varchar(20),

) 

Create Table KhachHang (
	MaKH varchar(10) Primary key,
	HoTen nvarchar(50),
	DiaChi nvarchar(50),
	SoDT varchar(15),
	GhiChu nvarchar(100),
) 

Create Table NhaCungCap (
	MaNCC varchar(10) Primary key,
	Ten nvarchar(50),
	DiaChi nvarchar(50),
	SoDT varchar(15),
	GhiChu nvarchar(100),
)

Create Table DonDatHang (
	MaDDH varchar(10) Primary key,
	NgayLap date,
	MaNV varchar(10),
	MaKH varchar(10),
	TongTien int,
	NgayGiaoDuKien date,
	GhiChu nvarchar(100)
	Foreign key (MaKH) References   KhachHang(MaKH),
	Foreign key (MaNV) References	NhanVien(MaNV)
)
Create Table CT_DonDatHang (
	MaDDH varchar(10),
	MaSP varchar(10),
	SoLuong int,
	ThanhTien int,
	GhiChu nvarchar(100),
	Primary key( MaDDH, MaSp),
	Foreign key (MaDDH) References DonDatHang(MaDDH),
	Foreign key (MaSP) References SanPham(MaSP),
)

Create Table PhieuGiaoHang (
	MaPGH varchar(10) Primary key,
	NgayLap date,
	MaNV varchar(10),
	MaKH varchar(10),
	TongTien int,
	GhiChu nvarchar(100),
	Foreign key (MaNV) References NhanVien(MaNV),
	Foreign key (MaKH) References KhachHang(MaKH)
)
Create Table CT_PhieuGiaoHang (
	MaPGH varchar(10),
	MaSP varchar(10),
	SoLuong int,
	ThanhTien int,
	GhiChu nvarchar(100),
	Primary key (MaPGH,MaSp),
	Foreign key (MaPGH) References PhieuGiaoHang(MaPGH),
	Foreign key (MaSP) References SanPham(MaSP)
)

Create Table HoaDonBanHang (
	MaHD varchar(10) Primary key,
	NgayLap date,
	MaNV varchar(10),
	MaKH varchar(10),
	TongTien int,
	GhiChu nvarchar(100),
	Foreign key (MaNV) References NhanVien(MaNV),
	Foreign key (MaKH) References KhachHang(MaKH)
)
Create Table CT_HoaDonBanHang (
	MaHD varchar(10),
	MaSP varchar(10),
	SoLuong int,
	ThanhTien int,
	GhiChu nvarchar(100)
	Primary key (MaHD, MaSp),
	Foreign key (MaHD) References HoaDonBanHang (MaHD),
	Foreign key (MaSP) References SanPham(MaSP)
)

Create Table DonNhapHang (
	MaDNH varchar(10) Primary key,
	NgayLap Date,
	MaNV varchar(10),
	MaNCC varchar(10),
	TongTien int ,
	NgayGiaoDuKien date,
	GhiChu nvarchar(100),
	Foreign key (MaNV) References NhanVien (MaNV),
	Foreign key (MaNCC) References NhaCungCap (MaNCC)
)
Create Table CT_DonNhapHang (
	MaDNH varchar(10),
	MaSP varchar(10),
	SoLuong int,
	ThanhTien int ,
	GhiChu nvarchar(100),
	Primary key (MaDNH, MaSP),
	Foreign key (MaDNH) References DonNhapHang (MaDNH),
	Foreign key (MaSP) References SanPham (MaSP),
)

Create Table HoaDonNhapHang (
	MaHD varchar(10) Primary key,
	NgayLap date,
	MaNV varchar(10),
	MaNCC varchar(10),
	TongTien int,
	GhiChu nvarchar(100),
	Foreign key (MaNV) References NhanVien (MaNV),
	Foreign key (MaNCC) References NhaCungCap (MaNCC),
)
Create Table CT_HoaDonNhapHang (
	MaHD varchar(10),
	MaSP  varchar(10),
	Soluong int,
	ThanhTien int,
	GhiChu nvarchar(100),
	Primary key (MaHD,MaSp),
	Foreign key (MaHD) References HoaDonNhapHang (MaHD),
	Foreign key (MaSP) References SanPham (MaSP)
)

Create Table PhieuThu (
	MaPT varchar(10) Primary key,
	NgayLap date,
	MaNV varchar(10),
	MaKH varchar(10),
	SoTienNo int,
	SoTienThu int,
	Foreign key (MaNV) References NhanVien(MaNV),
	Foreign key (MaKH) References KhachHang(MaKH)
)
Create Table PhieuChi (
	MaPC varchar(10)  Primary key,
	NgayLap date,
	MaNV varchar(10),
	MaKH varchar(10),
	SoTienNo int,
	SoTienThu int,
	Foreign key (MaNV) References NhanVien(MaNV),
	Foreign key (MaKH) References KhachHang(MaKH)
)
Create Table BaoCaoTonKho (
	NgayLap date,
	MaSP varchar(10),
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
	MaSP varchar(10),
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
	MaKH varchar(10),
	NoKyDau int,
	PhatSinh int,
	NoKyCuoi int,
	GhiChu nvarchar(100),
	Primary key (NgayLap, MaKH),
	Foreign key (MaKH) References KhachHang(MaKH)
 )
  