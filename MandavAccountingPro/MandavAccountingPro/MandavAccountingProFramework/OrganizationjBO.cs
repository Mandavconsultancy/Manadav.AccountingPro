using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace MandavAccountingProFramework
{
    public class OrganizationjBO
    {
        #region "Properties"
        public int OrgID { get; set; }
        public string OrgName { get; set; }
        public string OrgMailingName { get; set; }
        public string OrgAddress { get; set; }
        public int? OrgCountryID { get; set; }
        public int? OrgStateID { get; set; }
        public string OrgPincode { get; set; }
        public string OrgPhoneNumber { get; set; }
        public string OrgMobile { get; set; }
        public string OrgFaxNo { get; set; }
        public string OrgEmail { get; set; }
        public string OrgWebsite { get; set; }
        public string Password { get; set; }
        public string OrgPanNo { get; set; }
        public string OrgSaleTaxNo { get; set; }
        public string OrgVatID { get; set; }
        public int? CurrencyID { get; set; }
        public string CountryName { get; set; }
        public string StateName { get; set; }
        public string CurrencySymbol { get; set; }
        public string CurrencyFormalName { get; set; }
        #endregion

        #region Methods
        MAPDataContext db = new MAPDataContext();

        public List<OrganizationjBO> GetOrganizations()
        {
            var lst = db.GetOrganizations();

            List<OrganizationjBO> lstObj = new List<OrganizationjBO>();

            if (lst != null )
            {
                foreach (var item in lst)
                {
                    OrganizationjBO obj = new OrganizationjBO();
                    obj.OrgID = item.OrgID;
                    obj.OrgName = item.OrgName;
                    obj.OrgMailingName = item.OrgMailingName;
                    obj.OrgMobile = item.OrgMobile;
                    obj.OrgAddress = item.OrgAddress;
                    obj.OrgCountryID =item.OrgCountryID;
                    obj.OrgEmail = item.OrgEmail;
                    obj.OrgFaxNo = item.OrgFaxNo;
                    obj.OrgPincode = item.OrgPincode;
                    obj.OrgPanNo = item.OrgPanNo;
                    obj.OrgPhoneNumber = item.OrgPhoneNumber;
                    obj.OrgSaleTaxNo = item.OrgSaleTaxNo;
                    obj.OrgWebsite = item.OrgWebsite;
                    obj.Password = item.Password;
                    obj.OrgVatID = item.OrgVatID;
                    obj.StateName = item.StateName;
                    obj.CurrencyID = item.CurrencyID;
                    obj.CurrencySymbol = item.CurrencySymbol;
                    obj.CurrencyFormalName = item.CurrencyFormalName;
                    obj.CountryName = item.CountryName;



                    lstObj.Add(obj);
                }

                return lstObj;
            }

            return null;
        }

        public Organization GetOrganization(int OrgID)
        {
            return db.Organizations.Where(x => x.OrgID == OrgID).FirstOrDefault();
        }

        public int CreateOrganization(Organization obj)
        {
            db.Organizations.InsertOnSubmit(obj);
            db.SubmitChanges();
            return obj.OrgID;
        }

        public void UpdateOrganization(Organization obj)
        {
            var orgObj = db.Organizations.Where(x => x.OrgID == obj.OrgID).FirstOrDefault();
            if (orgObj != null)
            {
                orgObj.OrgID = obj.OrgID;
                orgObj.OrgName = obj.OrgName;
                orgObj.OrgMailingName = obj.OrgMailingName;
                orgObj.OrgAddress = obj.OrgAddress;
                orgObj.OrgWebsite = obj.OrgWebsite;
                orgObj.OrgEmail = obj.OrgEmail;
                orgObj.OrgFaxNo = obj.OrgFaxNo;
                orgObj.OrgMobile = obj.OrgMobile;
                orgObj.OrgPhoneNumber = obj.OrgPhoneNumber;
                orgObj.OrgPincode = obj.OrgPincode;
                orgObj.OrgPanNo = obj.OrgPanNo;
                orgObj.OrgSaleTaxNo = obj.OrgSaleTaxNo;
                orgObj.OrgVatID = obj.OrgVatID;
                orgObj.Password = obj.Password;
                orgObj.OrgCountryID = obj.OrgCountryID;
                orgObj.CurrencyID = obj.CurrencyID;
                orgObj.OrgStateID = obj.OrgStateID;
             
                

                db.SubmitChanges();
            }

        }

        #endregion
    }
}
