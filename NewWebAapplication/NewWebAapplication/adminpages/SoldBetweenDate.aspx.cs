using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication.adminPages
{
    public partial class SoldBetweenDate : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void BindTheGridView(string date1, string date2)
        // שהם בין שני תאריכים ordersTable הפעולה מעתיקה את הנתונים מטבלת
        {
            string sql = string.Format("select * from ordersTable where [payDate] between '{0}' and '{1}'", date1, date2);
            DataTable dt = Dal.SelectFromTableDT(sql, "DataBase10.accdb");
            GridView1.DataSource = dt;
            GridView1.DataBind();

            // מחשבת את סכום המחירים של ההזמנות
            double sum = 0;
            for (int i = 0; i < dt.Rows.Count; i++) 
                sum += int.Parse(dt.Rows[i][3].ToString()); 

            Label3.Text = sum.ToString();
        }


        protected void Button1_Click(object sender, EventArgs e) // כאשר כפתור השמירה נלחץ BindTheGridView הפעולה מזמינה את הפעולה
        {
            string date1 = Label1.Text;
            string date2 = Label2.Text;
            BindTheGridView(date1, date2);

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e) // מציינת את תאריך ההזמנות שנבחר בלוח שנה 1
        {
            DateTime d = Calendar1.SelectedDate;
            string date = string.Format("{0:dd/MM/yyyy}", d);
            Label1.Text = date;


        }
        protected void Calendar2_SelectionChanged(object sender, EventArgs e) // מציינת את תאריך ההזמנות שנבחר בלוח שנה 2
        {
            DateTime d = Calendar2.SelectedDate;
            string date = string.Format("{0:dd/MM/yyyy}", d);
            Label2.Text = date;

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e) // BookTable הפעולה מחזירה את פרטי הספר שנבחר מהטבלה
        {
            int orderNumber = int.Parse(GridView1.SelectedRow.Cells[0].Text);
            string sql = string.Format("select itemNumber from detailsTable where orderNumber={0}", orderNumber);
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            string sql1 = string.Format("select * from BookTable  where index={0}", int.Parse(dt.Rows[0][0].ToString()));
            DataTable dt1 = Dal.SelectFromTableDT(sql1, "Database10.accdb");
            for (int i = 1; i < dt.Rows.Count; i++)
            {
                string sql2 = string.Format("select * from BookTable  where index={0}", int.Parse(dt.Rows[i][0].ToString()));
                DataTable dt2 = Dal.SelectFromTableDT(sql2, "Database10.accdb");
                dt1.Merge(dt2);
            }

            GridView2.DataSource = dt1;
            GridView2.DataBind();


        }
    }
}