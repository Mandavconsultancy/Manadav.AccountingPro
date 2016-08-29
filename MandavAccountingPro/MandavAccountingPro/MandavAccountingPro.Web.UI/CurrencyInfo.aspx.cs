using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nsMAPF = MandavAccountingProFramework;

namespace MandavAccountingPro.Web.UI
{
    public partial class addcur : System.Web.UI.Page
    {

       public List<nsMAPF.Currency> lstCur = null;

       protected void btnAddCurrency_Click(object sender, EventArgs e)
       {
           
           nsMAPF.Currency obj = new nsMAPF.Currency();

           obj.CurrencyFormalName = txtFormalName.Text;
           obj.CurrencyShortName = txtCurrencyShortName.Text;
           obj.CurrencySymbol = txtCurrencySymbol.Text;


          int result =  new nsMAPF.CurrencyBO().AddCurrency(obj);

          if (result == 1000001)
          {
              lblMsg.Text = "Currency with similar name already exists";
          }
          else
          {
              Response.Redirect("CurrencyInfoListing.aspx");
          }
       }
       

      
               

    }
}