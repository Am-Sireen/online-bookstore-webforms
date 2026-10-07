using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication.adminPages
{
    public partial class SoldInDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void BindTheGridView(string date) // שהם בתאריך מסוים ordersTable הפעולה מעתיקה את הנתונים מטבלת
        {

            string sql = string.Format("select * from ordersTable where [payDate]='{0}'", date);
            DataTable dt = Dal.SelectFromTableDT(sql, "DataBase10.accdb");
            GridView1.DataSource = dt;
            GridView1.DataBind();

            // מחשבת את סכום המחירים של ההזמנה
            double sum = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
                sum += int.Parse(dt.Rows[i][3].ToString());

            Label1.Text = sum.ToString();

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e) // ציינת את תאריך ההזמנות שנבחר בלוח שנה 1
        {
            DateTime d = Calendar1.SelectedDate;
            string date = string.Format("{0:dd/MM/yyyy}", d);
            BindTheGridView(date);


        }

    }
}