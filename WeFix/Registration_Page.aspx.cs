using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeFix
{
    public partial class Registration_Page : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        string str;
           protected void Page_Load(object sender, EventArgs e)
            {
                con = new MySqlConnection("Data Source=localhost;Database=wefix;User ID = root; Password = nikita");
                con.Open();
                Response.Write("connect");
            }
            protected void Button1_Click(object sender, EventArgs e)
            {
               
                str = "insert into user(username,mobileno,password,location,email)  values ('" + TextBox1.Text.ToString() + "','"+ TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "','"+ TextBox6.Text.ToString()+"','"+ TextBox5.Text.ToString()+"')";
                cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, GetType(), "RegistrationSuccess", "alert('Registration successful!');", true);
                con.Close();
            }   
    }
}