using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class HoaDonNhapHang
    {
        public String MaHD { get; set; }
        public DateTime NgayLap { get; set; }
        public String  MaNV { get; set; }
        public String MaNCC { get; set; }
        public double TongTien { get; set; }
        public String GhiChu { get; set; }
        public bool IsActive { get; set; }
        public HoaDonNhapHang() { }
        public HoaDonNhapHang(String _maHD, DateTime _ngayLap, String _maNV, String _maNCC,
                              double _tongTien, String _ghiChu, bool _isActive)
        {
            MaHD = _maHD;
            NgayLap = _ngayLap;
            MaNV = _maNV;
            MaNCC = _maNCC;
            TongTien = _tongTien;
            GhiChu = _ghiChu;
            IsActive = _isActive;
        } 
}
