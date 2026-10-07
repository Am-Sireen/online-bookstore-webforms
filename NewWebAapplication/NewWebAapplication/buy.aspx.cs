using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace NewWebAapplication
{
    public partial class buy : System.Web.UI.Page
    {
        public static bool isFound = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["total"] != null) // אינו ריק total אם הערך של המשתנה
                {
                    Label1.Text = Request.QueryString["total"].ToString(); // label1-הערך של המשתנה ניתן ל
                }
                BindTheDropDownListcountries(); // cityDropDownList ול countryDropDownList הפעולה מעתיקה את הנתונים מטבלת האקסס ל
            }

        }


        public void BindTheDropDownListcountries()
        {
            try
            {
                localhost.WebService1 ws = new localhost.WebService1(); //localhost.WebService1 יצירת אובייקט מסוג
                DataTable dt = ws.GetCountryNames();
                countryDropDownList.DataTextField = "countryName";
                countryDropDownList.DataSource = dt;
                countryDropDownList.DataBind();

                cityDropDownList.DataTextField = "cityName";
                cityDropDownList.DataSource = ws.GetCitiesNames(countryDropDownList.SelectedValue);
                cityDropDownList.DataBind();
            }
            catch (Exception ex)
            {
                countryDropDownList.Items.Add("Israel");
                cityDropDownList.Items.Add("Dear ail asad");

            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            // save in customers Table;
            string id = idTextBox.Text;
            string fullName = fullNameTextBox.Text;
            string email = emailTextBox.Text;
            string phoneNumber = phoneTextBox.Text;
            string country = countryDropDownList.SelectedValue;
            string city = cityDropDownList.SelectedValue;
            string postalBox = boxTextBox.Text;
            if (isFound == false)
            {
                //הכנסה לטבלת הלקוחות
                string sql = string.Format("insert into CustomerTable (id,fullName,email,phoneNumber,country,city,postalNumber) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", id, fullName, email,
                    phoneNumber, country, city, postalBox);
                Dal.ChangeTable(sql, "Database10.accdb");
            }
            else
            {
                //עדכון טבלת הלקוחות
                string sql = string.Format("update CustomerTable set fullName='{0}', email='{1}',phoneNumber='{2}',country='{3}',city='{4}',postalNumber='{5}'  where id='{6}'", fullNameTextBox.Text,
                    emailTextBox.Text, phoneTextBox.Text,
                    countryDropDownList.SelectedValue, cityDropDownList.SelectedValue, boxTextBox.Text, idTextBox.Text);
                Dal.ChangeTable(sql, "Database10.accdb");
            }

            //  save in ordersTable
            int orderNumber;
            string sql1 = "select * from ordersTable";
            DataTable dt = Dal.SelectFromTableDT(sql1, "Database10.accdb");
            if (dt.Rows.Count == 0)  // the orderNumber not found
                orderNumber = 1;
            else 
            {
                sql1 = "select Max(orderNumber) from ordersTable";
                dt = Dal.SelectFromTableDT(sql1, "Database10.accdb");
                orderNumber = int.Parse(dt.Rows[0][0].ToString()) + 1;
            }
            int total = int.Parse(Label1.Text);
            string payDate = DateTime.Now.ToShortDateString(); // קביעת הזמן הנוכחי
            string cardNumber = cardTextBox.Text;
            string sql2 = string.Format("insert into ordersTable (orderNumber,id,total,payDate,cardNumber) values({0},'{1}',{2},'{3}','{4}')", orderNumber, id, total, payDate, cardNumber);
            Dal.ChangeTable(sql2, "Database10.accdb");

            // save in the details table that contains the items in the cart
            DataTable dt1 = (DataTable)Session["cart"];
            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                string sql3 = string.Format("insert into detailsTable (orderNumber,itemNumber,price) values ({0},{1},{2})", orderNumber, int.Parse(dt1.Rows[i][0].ToString()), int.Parse(dt1.Rows[i][4].ToString()));
                Dal.ChangeTable(sql3, "Database10.accdb");
            }

            // העברה לדף התודה עם העברת המשתנים המוזכרים 
            Response.Redirect("~/thankyou.aspx?fullName=" + fullName + "&orderNumber=" + orderNumber + " &total=" + Label1.Text + "&country=" + country + "&city=" + city + "&postalBox=" + postalBox);
        }

        protected void idTextBox_TextChanged(object sender, EventArgs e)
        {
            string sql = string.Format("select * from CustomerTable where id='{0}'", idTextBox.Text);
            DataTable dt = Dal.SelectFromTableDT(sql, "Database10.accdb");
            if (dt.Rows.Count == 0)   // the id  not found
            {
                isFound = false;
            }
            else   // the id is already found before
            {
                fullNameTextBox.Text = dt.Rows[0][2].ToString();
                emailTextBox.Text = dt.Rows[0][3].ToString();
                phoneTextBox.Text = dt.Rows[0][4].ToString();
                countryDropDownList.DataValueField = dt.Rows[0][5].ToString();
                countryDropDownList.SelectedValue = dt.Rows[0][5].ToString();

                localhost.WebService1 ws = new localhost.WebService1();
                cityDropDownList.DataTextField = "cityName";
                cityDropDownList.DataSource = ws.GetCitiesNames(countryDropDownList.SelectedValue);
                cityDropDownList.DataBind();
                cityDropDownList.SelectedValue = dt.Rows[0][6].ToString();
                boxTextBox.Text = dt.Rows[0][7].ToString();
                isFound = true;



            }

        }

        protected void countryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string country = countryDropDownList.SelectedValue;
            localhost.WebService1 ws = new localhost.WebService1();
            DataTable dt = ws.GetCitiesNames(country);
            cityDropDownList.DataTextField = "cityName";
            cityDropDownList.DataSource = dt;
            cityDropDownList.DataBind();

        }
    }
}