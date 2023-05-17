using MySql.Data.MySqlClient;
using Mysqlx.Crud;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Google.Protobuf.Reflection.SourceCodeInfo.Types;

namespace WeFix
{
    public partial class Profile_update_form_user : System.Web.UI.Page
    {
       MySqlConnection con = new MySqlConnection("Data Source=localhost;Database=wefix;User ID = root; Password = nikita");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Your existing code to populate the textboxes with session values

                con.Open();
                TextBox1.Text = Session["username"].ToString();
                TextBox2.Text = Session["phone"].ToString();
                TextBox5.Text = Session["email"].ToString();
                TextBox6.Text = Session["locationU"].ToString();
                string uid = Session["uid"].ToString();

                string str1 = "SELECT password FROM user where uid='" + uid + "'";
                MySqlCommand cmd1 = new MySqlCommand(str1, con);
                MySqlDataReader dr = cmd1.ExecuteReader();
                dr.Read();
                string pass = Convert.ToString(dr["password"]);
                TextBox3.Text = pass;
                TextBox4.Text = pass;

                con.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {   
            con.Open();
            int uid = Convert.ToInt32(Session["uid"]);
            string str = "update user set username='"+TextBox1.Text.ToString()+"',mobileno='"+TextBox2.Text.ToString()+"',password='"+TextBox3.Text.ToString()+"',location='"+TextBox6.Text.ToString()+"',email='"+TextBox5.Text.ToString()+"' where uid='"+uid+"'";
           

            MySqlCommand cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "UpdateSuccess", "alert('Updated Successfully !!!');", true);
            con.Close();

        }
    }
}