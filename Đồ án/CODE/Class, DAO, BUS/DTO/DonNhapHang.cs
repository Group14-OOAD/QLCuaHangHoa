using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
    public class DonNhapHang
    {
        public String MaDNH { get; set; }
        public DateTime NgayLap { get; set; }
        public String MaNV { get; set; }
        public String MaNCC { get; set; }
        public double TongTien { get; set; }
        public DateTime NgayGiaoDuKien { get; set; }
        public String GhiChu { get; set; }
        public bool IsActive { get; set; }
        public DonNhapHang ()
        {

        }
        public DonNhapHang (String _maDNH, DateTime _ngayLap, String _maNV, String _maNCC, Double _tongtien,
                            DateTime _ngayGiaoDuKien, String _ghiChu, bool _isActive)
        {
            MaDNH = _maDNH;
            NgayLap = _ngayLap;
            MaNV = _maNV;
            MaNCC = _maNCC;
            TongTien = _tongtien;
            NgayGiaoDuKien = _ngayGiaoDuKien;
            GhiChu = _ghiChu;
            IsActive = _isActive;
        }

    }
}
