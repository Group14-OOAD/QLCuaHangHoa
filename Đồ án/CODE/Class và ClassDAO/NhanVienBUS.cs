using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO_Login;
using DTO_Login;
using System.Data;

namespace BusinessLogicTier
{
    public class NhanVienBUS
    {
        NhanVienDAO objNV = new NhanVienDAO();
        public bool addNhanVien(NhanVien nhanVien)
        {
            return objNV.addNhanVien(nhanVien);
        }
        public bool deleteNhanVien(string maNV)
        {
            return objNV.deleteNhanVien(maNV);
        }
        public bool updateNhanVien(NhanVien nhanVien)
        {
            return objNV.updateNhanVien(nhanVien);
        }
        public NhanVien getNhanVien(string maNV)
        {
            return objNV.getNhanVien(maNV);
        }
        public DataTable getAllNhanVien()
        {
            return objNV.getAllNhanVien();
        }
    }
}
