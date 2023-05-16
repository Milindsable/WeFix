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
    public partial class Worker_current_appointment : System.Web.UI.Page
    {
        Second ob = new Second();

        MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=wefix;User ID = root; Password=nikita");
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            int id = (int)Session["wid"];
            string date = DateTime.UtcNow.Date.ToString("yyyy-MM-dd");

            //string sQuery = "SELECT workerid,wname,wtype,skills,location,date from appointment where Userid='" + id + "' AND date>'" + date + "'";
            string sQuery = "SELECT Userid,username,mobileU,locationU,emailU,date from appointment where workerid='" + id + "'AND date>'" + date + "'";
            MyRepeater.DataSource = ob.getData(sQuery);
            MyRepeater.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            int workerid = (int)Session["wid"];
            string phoneno = (item.FindControl("Label2") as Label).Text;
            string str = "delete from appointment where workerid='" + workerid + "'AND mobileU='"+phoneno+"'";
            MySqlCommand cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Appointment deleted successfully !!');", true);
        }
    }
}