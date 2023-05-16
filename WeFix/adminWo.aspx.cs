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
    public partial class adminWo : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sQuery = "SELECT wid,name,work_type,skills,phoneno,email,location,price from worker";
            MyRepeater.DataSource =ob.getData(sQuery);
            MyRepeater.DataBind();
        }
        protected void GetValue(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=;User ID = root; Password=nikita");
            con.Open();
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            string message =(item.FindControl("Label1") as Label).Text;
            int id = int.Parse(message);
            string str="delete from worker where wid='"+id+"'";
            MySqlCommand cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Worker deleted successfully with id="+id+"!!');", true);
            // Session["userdata"] = id;
            // Response.Redirect("WebForm5.aspx");
        }

    }
}