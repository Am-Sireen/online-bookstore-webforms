using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication.adminPages
{
    public partial class insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) // כאשר הדף נטען 
        {
            if (!IsPostBack)
            {
                BindTheCategoryDropDownList();
                BindTheAuthorDropDownList();
            }
        }

        public void BindTheCategoryDropDownList() // (הפעולה מעתיקה את שם הגתיגורוה מטבלת האקסס לרשימה נפתחת (דרובדון ליסת  
        {
            string sql = "select CategoryName from CategoryTable";
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            CategoryDropDownList.DataTextField = "CategoryName";
            CategoryDropDownList.DataSource = dt;
            CategoryDropDownList.DataBind();
        }


        public void BindTheAuthorDropDownList() // (הפעולה מעתיקה את שם המחבר מטבלת האקסס לרשימה נפתחת (דרובדון ליסת  
        {
            string sql = "select AuthorName from AuthorTable";
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            AuthorDropDownList.DataTextField = "AuthorName";
            AuthorDropDownList.DataSource = dt;
            AuthorDropDownList.DataBind();
        }


        protected void Button1_Click(object sender, EventArgs e) // הפעולה שומרת את הנתונים שהוזנו כאשר כפתור השמירה נלחץ
        {
            string sql = string.Format("insert into BookTable ([BookName],[Category],[Author],[Price],[Picture]) values ('{0}','{1}','{2}',{3},'{4}')",
                BookNameTextBox.Text, CategoryDropDownList.Text, AuthorDropDownList.Text, PriceTextBox.Text, FileUpload1.FileName);

            Dal.ChangeTable(sql, "Database10.accdb");
            string path = HttpContext.Current.Server.MapPath("~/pics/" + FileUpload1.FileName);
            FileUpload1.SaveAs(path);
            BookNameTextBox.Text = "";
            PriceTextBox.Text = "";
            Label1.Text = " Your data is saved successfully";
        }
    }
}