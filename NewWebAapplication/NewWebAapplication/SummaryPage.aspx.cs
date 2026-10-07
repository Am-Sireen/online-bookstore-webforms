using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication
{
    public partial class Summary : System.Web.UI.Page
    {
        public void BindTheDataList()
        {
            int ix = int.Parse(Request.QueryString["index"].ToString()); // int מעמוד הבית והמרתו למשתנה מסוג index קבלת הערך של המשתנה  
            string sql = string.Format("select * from BookTable where index={0}", ix); //
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTheDataList();
                // 5DataListהפעולה מעתיקה את הנתונים מטבלת האקסס ל 
            }
        }

        
    }
}