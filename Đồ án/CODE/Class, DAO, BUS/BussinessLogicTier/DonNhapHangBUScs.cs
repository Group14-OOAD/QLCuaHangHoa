using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;
using System.Data;

namespace BusinessLogicTier
{
    class DonNhapHangBUScs
    {
        DonNhapHangDAO objDNH = new DonNhapHangDAO();
        public bool addDonNhapHang(DonNhapHang _donnhaphang)
        {
            return objDNH.addDonNhapHang(_donnhaphang);
        }
        public bool deleteDonNhapHang(string _maDNH)
        {
            return objDNH.deleteDonNhapHang(_maDNH);
        }
        public bool updateDonDatHang(DonNhapHang _donnhaphang)
        {
            return objDNH.updateDonDatHang(_donnhaphang);
        }
        public DonNhapHang getDonNhapHang(string _maDNH)
        {
            return objDNH.getDonNhapHang(_maDNH);
        }
        public DataTable getAllDonNhapHang()
        {
            return objDNH.getAllDonNhapHang();
        }
        public DataTable searchDonNhapHang(string _maDNH)
        {
            return objDNH.searchDonNhapHang(_maDNH);
        }
    }
}
