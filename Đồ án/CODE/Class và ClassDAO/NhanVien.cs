using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO_Login
{
    public class NhanVien
    {
        public string maNhanVien { get; set; }
        public string hoTen { get; set; }
        public int namSinh { get; set; }
        public string gioiTinh { get; set; }
        public string soDienThoai { get; set; }
        public string email { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string maLoaiNV { get; set; }
        public NhanVien() { }
        public NhanVien(string _maNhanVien, string _tenNV, int _ns, string _gt, string _sdt, string _email,
                        string _username, string _password, string _maLoaiNV)
        {
            maNhanVien = maNhanVien;
            hoTen = _tenNV;
            namSinh = _ns;
            gioiTinh = _gt;
            soDienThoai = _sdt;
            email = _email;
            username = _username;
            password = _password;
            maLoaiNV = _maLoaiNV;
        }
    }
}
