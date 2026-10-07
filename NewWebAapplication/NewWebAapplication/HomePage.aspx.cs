using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication
{
    public partial class HomePage : System.Web.UI.Page
    {
        public void BindTheDataList()
        {
            string sql = "select * from BookTable";
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTheDataList();
                // DataListהפעולה מעתיקה את הנתונים מטבלת האקסס ל
            }

        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int index = int.Parse(((Label)e.Item.FindControl("indexLabel")).Text);
            string sql = string.Format("select * from BookTable where index={0}", index);
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");

            if (Session["cart"] == null)   // this is the first item in the cart
            {
                Session["cart"] = dt;
            }

            else
            {
                ((DataTable)Session["cart"]).Merge(dt);// תאים שנוספו לטבלה מתמזגים
            }

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            //חיפוש ספר ספציפי בספריה
            string sql = string.Format("select * from BookTable where BookName='{0}'",TextBox1.Text);
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            if (dt.Rows.Count != 0)//אם הספר נמצה בספריה
            {
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
            else //אם הספר לא נמצה בספריה
            {
                Label1.Text = "SORRY,This Book is not available in the library ";
                DataList1.Visible = false;

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql;
            if (DropDownList1.SelectedValue == "Book Category") //Book Category אם הערך שנבחר מרשימה נפתחת הוא
            {
                sql = "select * from BookTable "; //בחירת את כל הנתונים מטבלת האקסס
            }
            else
            {
                 sql = string.Format("select * from BookTable where category='{0}'", DropDownList1.SelectedValue); // כל הספרים השייכים לאותה קטגוריה נבחרים מטבלת האקסס
            }
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
           LinkButton lbtn = (LinkButton)sender;
            string index = lbtn.CommandArgument;
            Response.Redirect("~/SummaryPage.aspx?index="+index); 
        }
    }
}