using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace NewWebAapplication.adminPages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public void BindTheGridView() //הפעולה מעתיקה את הנתונים מטבלת האקסס לגריד ויו
        {
            string sql = "select * from BookTable";
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            GridView1.DataSource = dt;
            GridView1.DataBind();
            FillDropDownListsF();
        }

        public void FillDropDownListsF() //לדרובדון ליסת AuthorTable ו CategoryTable הפעולה מעתיקה את הנתונים מטבלאות 
        {
            DropDownList Category = (DropDownList)GridView1.FooterRow.FindControl("CategoryFooterDropDownList");
            DropDownList Author = (DropDownList)GridView1.FooterRow.FindControl("AuthorFooterDropDownList");
            string scl = "select AuthorName from AuthorTable";
            DataTable dt = Dal.SelectFromTableDT(scl, "Database10.accdb");
            Author.DataValueField = "AuthorName";
            Author.DataSource = dt;
            Author.DataBind();
            string sql = "select CategoryName from CategoryTable";
            DataTable dt2 = Dal.SelectFromTableDT(sql, "Database10.accdb");
            Category.DataValueField = "CategoryName";
            Category.DataSource = dt2;
            Category.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTheGridView();
                FillDropDownListsF();
            }
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e) // הפעולה מאפשרת למנהל לערוך את התא בשורה שנבחרת על ידו בגריד ויו
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindTheGridView();
            DropDownList Category = (DropDownList)GridView1.Rows[e.NewEditIndex].FindControl("CategoryEditDropDownList");
            DropDownList Author = (DropDownList)GridView1.Rows[e.NewEditIndex].FindControl("AuthorEditDropDownList");
            string scl = "select AuthorName from AuthorTable";
            DataTable dt = Dal.SelectFromTableDT(scl, "Database10.accdb");
            Author.DataValueField = "AuthorName";
            Author.DataSource = dt;
            Author.DataBind();
            string sql = "select CategoryName from CategoryTable";
            DataTable dt2 = Dal.SelectFromTableDT(sql, "Database10.accdb");
            Category.DataValueField = "CategoryName";
            Category.DataSource = dt2;
            Category.DataBind();

        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e) //הפעולה מבטלת את תהליך העריכה
        {
            GridView1.EditIndex = -1;
            BindTheGridView();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)  // הפעולה מוחקת את השורה שנבחרה
        {
            int n = e.RowIndex;
            int index = int.Parse(((Label)GridView1.Rows[n].FindControl("indexLabel")).Text);
            string sql = string.Format("delete from BookTable where [index] = {0}", index);
            Dal.ChangeTable(sql, "Database10.accdb");
            BindTheGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)  // הפעולה מעדכנת את הגריד ויו ואת טבלת האקסס לפי הערך החדש שהוכנס על ידי המנהל
        {
            int n = e.RowIndex;
            int index = int.Parse(((Label)GridView1.Rows[n].FindControl("indexEditLabel")).Text);
            FileUpload fileUp = (FileUpload)GridView1.Rows[n].FindControl("FileUpload1");
            string BookName = ((TextBox)GridView1.Rows[n].FindControl("BookNameEditTextBox")).Text;
            string au = ((DropDownList)GridView1.Rows[n].FindControl("AuthorEditDropDownList")).Text;
            string ca = ((DropDownList)GridView1.Rows[n].FindControl("CategoryEditDropDownList")).Text;
            string pc = ((TextBox)GridView1.Rows[n].FindControl("PriceEditTextBox")).Text;

            if (fileUp.HasFile)
            {
              
                string sql = string.Format("update BookTable set  [BookName] ='{0}', [Author] ='{1}', [Category] ='{2}' , [Price] = {3}, [Picture]='{4}' where [index]={5}", 
                    BookName, au, ca, double.Parse(pc), fileUp.FileName, index);
                Dal.ChangeTable(sql, "Database10.accdb");
                string path = HttpContext.Current.Server.MapPath("~/pics/" + fileUp.FileName);
                fileUp.SaveAs(path);
                GridView1.EditIndex = -1;

            }
            else
            {
                string sql = string.Format("update BookTable set  [BookName] ='{0}', [Author] ='{1}', [Category] ='{2}' , [Price] = {3} where [index]={4}", BookName, au,
                    ca, double.Parse(pc), index);
                Dal.ChangeTable(sql, "Database10.accdb");
                GridView1.EditIndex = -1;
               

            }
            BindTheGridView();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)  // הפעולה שומרת את שם הקתיגוריה שהוזנה כאשר כפתור השמירה נלחץ
        {
            if (e.CommandName == "save")
            {
             
                string bn = ((TextBox)GridView1.FooterRow.FindControl("BookNameFooterTextBox")).Text;
                string ca = ((DropDownList)GridView1.FooterRow.FindControl("CategoryFooterDropDownList")).Text;
                string au = ((DropDownList)GridView1.FooterRow.FindControl("AuthorFooterDropDownList")).Text;
                string pc = ((TextBox)GridView1.FooterRow.FindControl("PriceFooterTextBox")).Text;
                FileUpload fileUp = (FileUpload)GridView1.FooterRow.FindControl("PictureFooterFileUpload");
                string sql = string.Format("insert into BookTable ([BookName], [Author] , [Category] , [Price] , [Picture]) values('{0}', '{1}','{2}',{3}, '{4}')", bn, au, ca,
                    pc, fileUp.FileName);
                Dal.ChangeTable(sql, "Database10.accdb");
                string path = HttpContext.Current.Server.MapPath("~/pics/" + fileUp.FileName);
                fileUp.SaveAs(path);
                BindTheGridView();
  
            }

        }
    }
}