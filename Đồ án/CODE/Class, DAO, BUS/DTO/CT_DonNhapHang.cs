using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class CT_DonNhapHang
    {
        public String MaDNH { get; set; }
        public String MaSP { get; set; }
        public int SoLuong { get; set; }
        public double ThanhTien { get; set; }
        public String GhiChu { get; set; }
        public bool IsActive { get; set; }
        public CT_DonNhapHang() { }
        public CT_DonNhapHang(String _maDNH, String _maSp, int _soLuong, double _thanhTien, String _ghiChu, bool _isActive)
        {
            MaDNH = _maDNH;
            MaSP = _maSp;
            SoLuong = _soLuong;
            ThanhTien = _thanhTien;
            GhiChu = _ghiChu;
            IsActive = _isActive;
        }
    }
}
