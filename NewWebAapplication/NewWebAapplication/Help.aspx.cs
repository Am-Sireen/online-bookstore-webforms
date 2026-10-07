using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewWebAapplication
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // את הבעיה של המשתמש ואת המייל שלו HelpTable הכנסה לתוך  
            string sql = string.Format("insert into HelpTable ([problem],[e-mail]) values ('{0}','{1}')", ProblemTextBox.Text, EmailTextBox.Text);
            Dal.ChangeTable(sql, "Database10.accdb");
            ProblemTextBox.Text = "";
            EmailTextBox.Text = "";
            Label1.Text = " thank you , we will answer you soon";
            ProblemTextBox.Visible = false;
            EmailTextBox.Visible = false;
        }
    }
}