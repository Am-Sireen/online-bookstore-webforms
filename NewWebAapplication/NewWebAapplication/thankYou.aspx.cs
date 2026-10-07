using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWebAapplication
{
    public partial class thankYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = Request.QueryString["fullName"].ToString();
                Label2.Text = Request.QueryString["orderNumber"].ToString();
                Label3.Text = Request.QueryString["total"].ToString();
                Label4.Text = Request.QueryString["country"].ToString();
                Label5.Text = Request.QueryString["city"].ToString();
                Label6.Text = Request.QueryString["postalBox"].ToString();
                Label7.Text = DateTime.Now.ToShortDateString();
            }
        }
    }
}