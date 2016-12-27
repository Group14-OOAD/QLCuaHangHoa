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
    class CT_HoaDonNhapHangBUS
    {
        CT_HoaDonNhapHangDAO objCT_HDNH = new CT_HoaDonNhapHangDAO();
        public bool addCT_HoaDonNhapHang(CT_HoaDonNhapHang _CT_hoadonnhaphang)
        {
            return objCT_HDNH.addCT_HoaDonNhapHang(_CT_hoadonnhaphang);
        }
        public bool deleteCT_HoaDonNhapHang(string _maHD)
        {
            return objCT_HDNH.deleteCT_HoaDonNhapHang(_maHD);
        }
        public bool updateCT_HoaDonDatHang(CT_HoaDonNhapHang _CT_hoadonnhaphang)
        {
            return objCT_HDNH.updateCT_HoaDonDatHang(_CT_hoadonnhaphang);
        }
        public CT_HoaDonNhapHang getCT_HoaDonNhapHang(string _maHD)
        {
            return objCT_HDNH.getCT_HoaDonNhapHang(_maHD);
        }
        public DataTable getAllCT_HoaDonNhapHang()
        {
            return objCT_HDNH.getAllCT_HoaDonNhapHang();
        }
        public DataTable searchCT_HoaDonNhapHang(string _maHD)
        {
            return objCT_HDNH.searchCT_HoaDonNhapHang(_maHD);
        }
    }
}
