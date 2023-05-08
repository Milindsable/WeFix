using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeFix
{
    public partial class adminContractor : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=;User ID = root; Password=nikita");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string sQuery = "SELECT cid,name,work_type,skills,phoneno,email,location,price from contractor";
            MyRepeater.DataSource = getData(sQuery);
            MyRepeater.DataBind();
        }
        public DataTable getData(string sQuery)
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
            con.Open();
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            string message = (item.FindControl("Label1") as Label).Text;
            int id = int.Parse(message);
            string str = "delete from contractor where cid='" + id + "'";
            MySqlCommand cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + id + "');", true);
            // Session["userdata"] = id;
            // Response.Redirect("WebForm5.aspx");
        }
    }
}