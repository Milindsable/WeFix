using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class contractor_current : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            int id = (int)Session["cid"];
            string date = DateTime.UtcNow.Date.ToString("yyyy-MM-dd");
            string sQuery = "SELECT Userid,username,mobileU,locationU,emailU,date from appointment_contractor where contid='" + id + "' AND date>'" + date + "'";
            MyRepeater.DataSource = ob.getData(sQuery);
            MyRepeater.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=wefix;User ID = root; Password=nikita");
            con.Open();
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            int workerid = (int)Session["cid"];
            string phoneno = (item.FindControl("Label2") as Label).Text;
            string str = "delete from appointment_contractor where contid='" + workerid + "'AND mobileU='" + phoneno + "'";
            MySqlCommand cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Appointment deleted successfully !!');", true);
        }
    }
}