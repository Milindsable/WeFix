using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class Profile_update_contractor : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Data Source=localhost;Database=wefix;User ID = root; Password = nikita");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Your existing code to populate the textboxes with session values

                con.Open();

                string cid = Session["cid"].ToString();

                string str1 = "SELECT name,work_type,skills,phoneno,email,location,password,price FROM contractor where cid='" + cid + "'";
                MySqlCommand cmd1 = new MySqlCommand(str1, con);
                MySqlDataReader dr = cmd1.ExecuteReader();
                dr.Read();
                string name = Convert.ToString(dr["name"]);
                string work_type = Convert.ToString(dr["work_type"]);
                string skills = Convert.ToString(dr["skills"]);
                string phoneno = Convert.ToString(dr["phoneno"]);
                string email = Convert.ToString(dr["email"]);
                string location = Convert.ToString(dr["location"]);
                string pass = Convert.ToString(dr["password"]);
                string price = Convert.ToString(dr["price"]);

                TextBox5.Text = name;
                TextBox1.Text = work_type;
                TextBox2.Text = skills;
                TextBox6.Text = phoneno;
                TextBox3.Text = email;
                TextBox4.Text = location;
                TextBox7.Text = pass;
                TextBox8.Text = pass;
                TextBox9.Text = price;

                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            int cid = Convert.ToInt32(Session["cid"]);
            string str = "update contractor set name='" + TextBox5.Text.ToString() + "',work_type='" + TextBox1.Text.ToString() + "',skills='" + TextBox2.Text.ToString() + "',phoneno='" + TextBox6.Text.ToString() + "',email='" + TextBox3.Text.ToString() + "',location='" + TextBox4.Text.ToString() + "',password='" + TextBox7.Text.ToString() + "',price='" + TextBox9.Text.ToString() + "' where cid='" + cid + "'";


            MySqlCommand cmd = new MySqlCommand(str, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, GetType(), "UpdateSuccess", "alert('Updated Successfully !!!');", true);
            con.Close();
        }
    }
}