using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Data.Entity;


namespace MandavAccountingProFramework
{
    public class CurrencyBO
    {
        #region "Properties"
        public int CurrencyID { get; set; }
        public string CurrencyFormalName { get; set; }
        public string CurrencySymbol { get; set; }
        public string CurrencyShortName { get; set; }
        #endregion

        #region Methods

        MAPDataContext db = new MAPDataContext();
        public List<Currency> lstCurrency = null;

        public List<CurrencyBO> GetCurrency()
        {
            List<CurrencyBO> lstBo = new List<CurrencyBO>();
            var lst = db.Currencies.ToList();

            foreach (var item in lst)
            {
                CurrencyBO obj = new CurrencyBO();
                
                obj.CurrencyID = item.CurrencyId;
                obj.CurrencyShortName = item.CurrencyShortName;
                obj.CurrencyFormalName = item.CurrencyFormalName;
                obj.CurrencySymbol = item.CurrencySymbol;

                lstBo.Add(obj);
            }

            return lstBo;
        }


        public int AddCurrency(Currency obj)
        {
            var chkObj = db.Currencies.Where(x => x.CurrencyFormalName == obj.CurrencyFormalName).FirstOrDefault();
            if (chkObj != null)
            {
                return 1000001;
            }
            else
            {
                db.Currencies.InsertOnSubmit(obj);
                db.SubmitChanges();

                return obj.CurrencyId;
            }
        }

        public void updateCurrency(Currency obj)
        {
            var currobj = db.Currencies.Where(x=> x.CurrencyId == obj.CurrencyId).FirstOrDefault();
            if  (currobj !=null)
            {
                currobj.CurrencyId = obj.CurrencyId;
                currobj.CurrencyShortName = obj.CurrencyShortName;
                currobj.CurrencyFormalName = obj.CurrencyFormalName;
                currobj.CurrencySymbol = obj.CurrencySymbol;

                db.SubmitChanges();
            }
        }

        #endregion
    }
}



 