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
    class CT_DonNhapHangBUS
    {
        CT_DonNhapHangDAO objCT_DNH = new CT_DonNhapHangDAO();
        public bool addCT_DonNhapHang(CT_DonNhapHang _CT_donnhaphang)
        {
            return objCT_DNH.addCT_DonNhapHang(_CT_donnhaphang);
        }
        public bool deleteCT_HoaDonNhapHang(string _maHD)
        {
            return objCT_DNH.deleteCT_DonNhapHang(_maHD);
        }
        public bool updateCT_DonDatHang(CT_DonNhapHang _CT_donnhaphang)
        {
            return objCT_DNH.updateCT_DonDatHang(_CT_donnhaphang);
        }
        public CT_DonNhapHang getCT_DonNhapHang(string _maHD)
        {
            return objCT_DNH.getCT_DonNhapHang(_maHD);
        }
        public DataTable getAllCT_DonNhapHang()
        {
            return objCT_DNH.getAllCT_DonNhapHang();
        }
        public DataTable searchCT_DonNhapHang(string _maHD)
        {
            return objCT_DNH.searchCT_DonNhapHang(_maHD);
        }
    }
}
