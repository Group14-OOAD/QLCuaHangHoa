﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using DTO;
using System.Data;

namespace BusinessLogicTier
{
    public class PhieuThuBUS
    {
        PhieuThuDAO objPT = new PhieuThuDAO();
        public bool addPhieuThu(PhieuThu phieuThu)
        {
            return objPT.addPhieuThu(phieuThu);
        }
        public bool deletePhieuThu(string maPT)
        {
            return objPT.deletePhieuThu(maPT);
        }
        public bool updatePhieuThu(PhieuThu phieuThu)
        {
            return objPT.updatePhieuThu(phieuThu);
        }
        public PhieuThu getPhieuThu(string maPT)
        {
            return objPT.getPhieuThu(maPT);
        }
        public DataTable getAllPhieuThu()
        {
            return objPT.getAllPhieuThu();
        }
        public DataTable searchPhieuThu(string maPT, string ngayLap)
        {
            return objPT.searchPhieuThu(maPT, ngayLap);
        }
    }
}
