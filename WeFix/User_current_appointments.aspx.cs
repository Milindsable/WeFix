using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class User_current_appointments : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            int id = (int)Session["uid"];
            string date = DateTime.UtcNow.Date.ToString("yyyy-MM-dd");

            string sQuery = "SELECT workerid,wname,wtype,skills,location,date from appointment where Userid='" + id + "' AND date>'" + date + "'";
            MyRepeater.DataSource = ob.getData(sQuery);
            MyRepeater.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=wefix;User ID = root; Password=nikita");

            con.Open();
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            int id = (int)Session["uid"];
            string workerid = (item.FindControl("lblid") as Label).Text;

            string str = "delete from appointment where Userid='"+id+"' AND workerid='"+int.Parse(workerid)+"'";
            MySqlCommand cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Appointment deleted successfully with id= !!');", true);

        }
    }
}