using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class Feedback_contractor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
            HttpContext.Current.Response.Cache.SetValidUntilExpires(false);
            HttpContext.Current.Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoStore();

            string uname = (string)Session["username"];
            string cname = (string)Session["cname"];
            TextBox1.Text = uname;
            TextBox2.Text = cname;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=wefix;User ID = root; Password=nikita");
            con.Open();
            string uname = (string)Session["username"];
            int uid = (int)Session["uid"];
            string contrid = (string)Session["contrid"];

            string str1 = "SELECT COUNT(*) FROM feedback_contractor where userid='" + uid + "' AND contrid='" + contrid + "'";
            MySqlCommand cmd1 = new MySqlCommand(str1, con);
            int count = Convert.ToInt32(cmd1.ExecuteScalar());

            if (count > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('You cant give feedback again !!!');", true);
            }
            else
            {
                string str = "insert into feedback_contractor(userid,username,contrid,feedtext) values ('" + uid + "', '" + uname + "', '" + contrid + "', '" + TextBox3.Text.ToString() + "')";
                MySqlCommand cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, GetType(), "FeedbackSuccess", "alert('Feedback Sent Successfully !!!');", true);
                con.Close();
            }
        }
    }
}
