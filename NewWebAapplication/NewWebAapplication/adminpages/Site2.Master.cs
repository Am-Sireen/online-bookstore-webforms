using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWebAapplication
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["validUser"].ToString() != "ok") // אם המשתמש אינו מורשה להיכנס לאתר,אם לא ביצע כניסה
            {
                Response.Redirect("~/LogIn.aspx"); //LogIn עבור לדף 
            }

        }

       
    }
}