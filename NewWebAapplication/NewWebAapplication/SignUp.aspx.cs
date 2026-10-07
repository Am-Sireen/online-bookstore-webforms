using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication
{
    public partial class SignUp : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = UserName.Text;
            string password = Password.Text;
            string sql = string.Format("insert into UserTable ([UserName],[Password]) values ('{0}','{1}')", user, password);
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            Response.Redirect("~/LogIn.aspx");
        }


    }
}