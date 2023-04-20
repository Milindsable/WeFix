using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeFix
{
    public partial class WebForm3 : System.Web.UI.Page
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
            if (RadioButtonList1.SelectedValue == "Worker")
            {
                str = "insert into worker(name,work_type,skills,phoneno,email,location,password)  values ('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox6.Text.ToString() + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox7.Text + "')";
                cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, GetType(), "RegistrationSuccess", "alert('Registration successful!');", true);
                con.Close();
            }
            else 
            {
                str = "insert into contractor(name,work_type,skills,phoneno,email,location,password)  values ('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox6.Text.ToString() + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox7.Text + "')";
                cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, GetType(), "RegistrationSuccess", "alert('Registration successful!');", true);
                con.Close();
            }
        }
    }
}