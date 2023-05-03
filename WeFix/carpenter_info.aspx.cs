using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class carpenter_info : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=;User ID = root; Password=nikita");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string sQuery = "SELECT name,work_type,skills,phoneno,email,location from worker where work_type='carpainter'";
            MyRepeater.DataSource = getData(sQuery);
            MyRepeater.DataBind();

        }
        private DataTable getData(string sQuery)
        {
            MySqlDataAdapter sdt = new MySqlDataAdapter();
            DataTable dTable = new DataTable();

            con = new MySqlConnection("Data Source=localhost;Database=wefix;User ID = root; Password = nikita");
            con.Open();
            MySqlCommand cmd = new MySqlCommand(sQuery, con);
            sdt.SelectCommand = cmd;
            sdt.Fill(dTable);
            con.Close();
            return dTable;
        }

        protected void GetValue(object sender, EventArgs e)
        {
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            string message = "Name: " + (item.FindControl("lblName") as Label).Text;
            message += "\\nWork Type: " + (item.FindControl("lblWorktype") as Label).Text;
            message += "\\nSkills: " + (item.FindControl("lblskills") as Label).Text;

            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            Session["userdata"] = message;
            Response.Redirect("WebForm5.aspx");
        }
    }
}