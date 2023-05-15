using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class Feedback : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = (string)Session["username"];
            string wname = (string)Session["workername"];
            TextBox1.Text = uname;
            TextBox2.Text = wname;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=wefix;User ID = root; Password=nikita");
            con.Open();
            string uname = (string)Session["username"];
            int uid = (int)Session["uid"];
            string wid = (string)Session["workerid"];

            string str1 = "SELECT COUNT(*) FROM feedback where uid='" + uid + "' AND wid='" + wid + "'";
            MySqlCommand cmd1 = new MySqlCommand(str1, con);
            int count = Convert.ToInt32(cmd1.ExecuteScalar());

            if (count > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('You cant give feedback again !!!');", true);
            }
            else
            {
                string str = "insert into feedback(uid,username,wid,feedtext) values ('" + uid + "', '" + uname + "', '" + wid + "', '" + TextBox3.Text.ToString() + "')";
                MySqlCommand cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, GetType(), "FeedbackSuccess", "alert('Feedback Sent Successfully !!!');", true);
                con.Close();
            }
        }
    }
}