using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class CT_HoaDonNhapHang
    {
        public String MaHD { get; set; }
        public String MaSP { get; set; }
        public int SoLuong { get; set; }
        public double ThanhTien { get; set; }
        public String GhiChu { get; set; }
        public bool IsActive { get; set; }
        public CT_HoaDonNhapHang() { }
        public CT_HoaDonNhapHang (String _maHD, String _maSP, int _soLuong,
                                  double _thanhTien, String _ghiChu, bool _isActive)
        {
            MaHD = _maHD;
            MaSP = _maSP;
            SoLuong = _soLuong;
            ThanhTien = _thanhTien;
            GhiChu = _ghiChu;
            IsActive = _isActive;
        }
    }
}
