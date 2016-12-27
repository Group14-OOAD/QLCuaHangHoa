using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DAO;
using DTO;

namespace BusinessLogicTier
{
    public class HoaDonNhapHangBUS
    {
        HoaDonNhapHangDAO objHDNH = new HoaDonNhapHangDAO();
        public bool addHoaDonNhapHang(HoaDonNhapHang _hoadonnhaphang)
        {
            return objHDNH.addHoaDonNhapHang(_hoadonnhaphang);
        }
        public bool deleteHoaDonNhapHang(string _maHD)
        {
            return objHDNH.deleteHoaDonNhapHang(_maHD);
        }
        public bool updateHoaDonDatHang(HoaDonNhapHang _hoadonnhaphang)
        {
            return objHDNH.updateHoaDonDatHang(_hoadonnhaphang);
        }
        public HoaDonNhapHang getHoaDonNhapHang(string _maHD)
        {
            return objHDNH.getHoaDonNhapHang(_maHD);
        }
        public DataTable getAllHoaDonNhapHang()
        {
            return objHDNH.getAllHoaDonNhapHang();
        }
        public DataTable searchHoaDonNhapHang(string _maHD)
        {
            return objHDNH.searchHoaDonNhapHang(_maHD);
        }

    }
}
