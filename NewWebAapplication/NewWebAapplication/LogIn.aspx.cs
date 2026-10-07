using System;
using System.Data.OleDb;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication
{
    public partial class logIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["validUser"] = "";

            bool isAdmin;

            using (OleDbConnection connection =
                Dal.MakeConnection("Database10.accdb"))
            using (OleDbCommand command = new OleDbCommand(
                "SELECT [IsAdmin] FROM [UserTable] " +
                "WHERE [UserName] = ? AND [Password] = ?",
                connection))
            {
                command.Parameters.Add("?", OleDbType.VarWChar)
                    .Value = TextBox1.Text.Trim();

                command.Parameters.Add("?", OleDbType.VarWChar)
                    .Value = TextBox2.Text;

                using (OleDbDataReader reader = command.ExecuteReader())
                {
                    if (!reader.Read())
                    {
                        Label1.Text = "Invalid user or wrong password";
                        return;
                    }

                    isAdmin = !reader.IsDBNull(0) && reader.GetBoolean(0);
                }
            }

            Session["validUser"] = isAdmin ? "ok" : "user";

            Response.Redirect(isAdmin
                ? "~/adminPages/ViewItems.aspx"
                : "~/HomePage.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp.aspx");
        }
    }
}