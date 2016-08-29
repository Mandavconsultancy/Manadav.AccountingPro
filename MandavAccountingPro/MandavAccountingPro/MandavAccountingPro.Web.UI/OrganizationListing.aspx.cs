using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nsMAPF = MandavAccountingProFramework;

namespace MandavAccountingPro.Web.UI
{
    public partial class OrganizationListing : System.Web.UI.Page
    {
        public List<nsMAPF.OrganizationjBO> lstOrg = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lstOrg = new nsMAPF.OrganizationjBO().GetOrganizations();
            }
        }
    }
}