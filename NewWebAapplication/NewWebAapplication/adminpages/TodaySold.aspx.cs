using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace NewWebAapplication.adminPages
{
    public partial class TodaySold : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTheGridView();
            }
        }

        public void BindTheGridView()  //של היום ordersTable הפעולה מעתיקה את הנתונים מטבלת
        {
            string today = DateTime.Now.ToShortDateString();
            string sql = string.Format("select * from ordersTable where payDate='{0}'", today);
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            if (dt.Rows.Count == 0) // there is no sold in this date
            {
                Label1.Text = " there is No sold in this date";
            }
            else
            {
                int sum = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    sum += int.Parse(dt.Rows[i]["total"].ToString());

                }

                GridView1.DataSource = dt;
                GridView1.DataBind();
                Label SumLabel = (Label)GridView1.FooterRow.FindControl("SumTotalLabel");
                SumLabel.ForeColor = System.Drawing.Color.Red;
                SumLabel.Text = sum.ToString();
            }
        }
    }
}