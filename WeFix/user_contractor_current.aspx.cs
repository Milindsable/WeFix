using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class user_contractor_current : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            int id = (int)Session["uid"];
            string date = DateTime.UtcNow.ToString("yyyy-MM-dd");

            string sQuery = "SELECT contid,contName,wtype,skills,location,date from appointment_contractor where Userid='" + id + "' AND date>'" + date + "'";
            MyRepeater.DataSource = ob.getData(sQuery);
            MyRepeater.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=wefix;User ID = root; Password=nikita");

            con.Open();
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            int id = (int)Session["uid"];
            string cid = (item.FindControl("lblid") as Label).Text;

            string str = "delete from appointment_contractor where Userid='" + id + "' AND contid='" + int.Parse(cid) + "'";
            MySqlCommand cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Appointment deleted successfully with id= !!');", true);

        }
    }
}