using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nsMAPF = MandavAccountingProFramework;

namespace MandavAccountingPro.Web.UI
{
    public partial class Cur : System.Web.UI.Page
    {
        public List<nsMAPF.CurrencyBO> lstCur = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lstCur = new nsMAPF.CurrencyBO().GetCurrency();

            }
        }
    }
}