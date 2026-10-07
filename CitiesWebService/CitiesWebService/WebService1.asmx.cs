using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;

namespace CitiesWebService
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        [WebMethod]
        public DataTable GetCountryNames()
        {
            string sql = "select DISTINCT countryName from myTable order by countryName";
            DataTable dt = Dal.SelectFromTableDT(sql, "Database12.accdb");
            dt.TableName = "countriesTable";
            return dt;
        }


        [WebMethod]
        public DataTable GetCitiesNames( string countryName)
        {
            string sql = string.Format("select cityName from myTable where countryName='{0}' order by cityName", countryName);
             DataTable dt= Dal.SelectFromTableDT(sql, "Database12.accdb");
            dt.TableName = "citiesTable";
            return dt;
        }
    }
}
