
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication
{
    public partial class MyCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTheGridView();
            }
        }// הפעולה מעתיקה את הנתונים מטבלת האקסס לגריד ויו
        public void BindTheGridView()
        {
            GridView1.DataSource = (DataTable)Session["cart"];
            GridView1.DataBind();
            LabelTotal.Text = TotalPrice().ToString();
           
        }
        public int TotalPrice() //הפעולה מחזירה את המחיר סופי 
        {
            if (Session["cart"] != null)
            {
                DataTable dt = (DataTable)Session["cart"];
                int sum = 0;
                for (int i = 0; i < dt.Rows.Count; i++) //הפקודה מבוצעת עד שמספר התאים בטבלה נגמר
                {
                    sum += int.Parse(dt.Rows[i]["Price"].ToString()); //sum ערכי המחיר מסוכמים למשתנה 
                }
                return sum;
            }
            else return 0;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int n = e.RowIndex;
            DataTable dt = (DataTable)Session["cart"];
            dt.Rows.RemoveAt(n);
            Session["cart"] = dt;

            BindTheGridView();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["cart"] != null) // אם העגלה אינה ריקה
            {
                Response.Redirect("~/buy.aspx?total=" + LabelTotal.Text);//והעברתו עם הדף total שמירה על המשתנה ,Buy העברה לדף 
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}