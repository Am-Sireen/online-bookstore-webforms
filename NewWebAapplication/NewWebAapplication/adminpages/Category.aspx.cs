using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication.adminPages
{
    public partial class Category : System.Web.UI.Page
    {
        public void BindTheGridView() //הפעולה מעתיקה את הנתונים מטבלת האקסס לגריד ויו
        {
            string sql = "select * from CategoryTable";
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTheGridView();

            }
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e) //הפעולה מבטלת את תהליך העריכה
        {
            GridView1.EditIndex = -1;
            BindTheGridView();

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)  // הפעולה מאפשרת למנהל לערוך את התא בשורה שנבחרת על ידו בתוך הגריד ויו
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindTheGridView();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e) // הפעולה מוחקת את השורה שנבחרה   
        {
            int n = e.RowIndex;
            int index = int.Parse(((Label)GridView1.Rows[n].FindControl("indexLable")).Text);
            string sql = string.Format("delete from CategoryTable where [index] = {0}", index);
            Dal.ChangeTable(sql, "Database10.accdb");
            BindTheGridView();


        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e) // הפעולה מעדכנת את הגריד ויו ואת טבלת האקסס לפי הערך החדש שהוכנס על ידי המנהל
        {
            int n = e.RowIndex;
            int index = int.Parse(((Label)GridView1.Rows[n].FindControl("indexEditLable")).Text);
            string CategoryName = ((TextBox)GridView1.Rows[n].FindControl("EditCategoryNameTextBox")).Text;
            string sql = string.Format("update CategoryTable set [CategoryName] ='{0}' where [index] = {1}", CategoryName, index);
            Dal.ChangeTable(sql, "Database10.accdb");
            GridView1.EditIndex = -1;
            BindTheGridView();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e) // הפעולה שומרת את שם הקתיגוריה שהוזנה כאשר כפתור השמירה נלחץ
        {
            if (e.CommandName == "save") // אם כפתור השמירה נלחץ 
            {
                TextBox CategoryName = (TextBox)GridView1.FooterRow.FindControl("FooterCategoryNameTextBox");
                string sql = string.Format("insert into CategoryTable ([CategoryName]) values('{0}')", CategoryName.Text);
                Dal.ChangeTable(sql, "Database10.accdb"); 
                BindTheGridView();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}