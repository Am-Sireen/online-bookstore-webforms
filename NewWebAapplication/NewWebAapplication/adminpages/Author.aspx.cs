using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication.adminPages
{
    public partial class Author : System.Web.UI.Page
    {
        public void BindTheGridView() // הפעולה מעתיקה את הנתונים מטבלת האקסס לגריד ויו
        {
            string sql = "select * from AuthorTable";
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTheGridView();
            }
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e) // הפעולה מאפשרת למנהל לערוך את התא בשורה שנבחרת על ידו בתוך הגריד ויו  
        {
            GridView2.EditIndex = e.NewEditIndex;
            BindTheGridView();
        }




        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e) // הפעולה מבטלת את תהליך העריכה
        {
            GridView2.EditIndex = -1;
            BindTheGridView();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e) //הפעולה מוחקת את השורה שנבחרה
        {
            int n = e.RowIndex;
            int index = int.Parse(((Label)GridView2.Rows[n].FindControl("indexLable")).Text);
            string sql = string.Format("delete from AuthorTable where [index] = {0}", index);
            Dal.ChangeTable(sql, "Database10.accdb");
            BindTheGridView();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e) // לפי הערך החדש שהוכנס על ידי המנהל(Database) הפעולה מעדכנת את הגריד ויו ואת מאגר המידע
        {
            int n = e.RowIndex;
            int index = int.Parse(((Label)GridView2.Rows[n].FindControl("indexEditLable")).Text);
            string AuthorName = ((TextBox)GridView2.Rows[n].FindControl("EditAuthorNameTextBox")).Text;
            string sql = string.Format("update AuthorTable set [AuthorName] ='{0}' where [index] = {1}", AuthorName, index);
            Dal.ChangeTable(sql, "Database10.accdb");
            GridView2.EditIndex = -1;
            BindTheGridView();
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)// הפעולה שומרת את שם המחבר שהוזן כאשר כפתור השמירה נלחץ
        {
            if (e.CommandName == "save")
            {
                TextBox AuthorName = (TextBox)GridView2.FooterRow.FindControl("FooterAuthorNameTextBox");
                string sql = string.Format("insert into AuthorTable ([AuthorName]) values('{0}')", AuthorName.Text);
                Dal.ChangeTable(sql, "Database10.accdb");
                BindTheGridView();
            }

        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}