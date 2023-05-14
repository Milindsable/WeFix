using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeFix
{
    public partial class Login_Page : System.Web.UI.Page
    {
        MySqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new MySqlConnection("Data Source=localhost;Database=wefix;User ID = root; Password = nikita");
            Response.Write("connect");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "User")
            {
                MySqlCommand com = new MySqlCommand();
                com.Connection = con;
                con.Open();

                com.CommandText = ("select uid,username,mobileno,password,location,email from user");
                MySqlDataReader read = com.ExecuteReader();
                while (read.Read())
                {
                    int id = (int)read["uid"];
                    string phone = (string)read["mobileno"];
                    string location =(string)read["location"];
                    string email = (string)read["email"];
                    string inputUsername = (string)read["username"];
                    string inputPassword = (string)read["password"];
                    string username = TextBox1.Text;
                    string password = TextBox2.Text;

                    if (inputUsername == username && inputPassword == password)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginSuccess", "alert('Login successful!');", true);
                        Session["username"] = username;
                        Session["uid"] = id;
                        Session["phone"] = phone;
                        Session["email"] = email;
                        Session["locationU"] = location;
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginFailed", "alert('Invalid username or password.');", true);
                    }
                }
            }
            else if (DropDownList1.SelectedItem.Value == "Worker")
            {
                MySqlCommand com = new MySqlCommand();
                com.Connection = con;
                con.Open();

                com.CommandText = ("select wid,name,password from worker");
                MySqlDataReader read = com.ExecuteReader();
                while (read.Read())
                {
                    int id = (int)read["wid"];
                    string inputUsername = (string)read["name"];
                    string inputPassword = (string)read["password"];
                    string username = TextBox1.Text;
                    string password = TextBox2.Text;

                    if (inputUsername == username && inputPassword == password)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginSuccess", "alert('Login successful!');", true);
                        Session["workername"] = username;
                        Session["wid"] = id;
                        Response.Redirect("Worker_ho.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginFailed", "alert('Invalid username or password.');", true);
                    }
                }
            }
            else if (DropDownList1.SelectedItem.Value == "Contractor")
            {
                MySqlCommand com = new MySqlCommand();
                com.Connection = con;
                con.Open();

                com.CommandText = ("select cid,name,password from contractor");
                MySqlDataReader read = com.ExecuteReader();
                while (read.Read())
                {
                    int id = (int)read["cid"];
                    string inputUsername = (string)read["name"];
                    string inputPassword = (string)read["password"];
                    string username = TextBox1.Text;
                    string password = TextBox2.Text;

                    if (inputUsername == username && inputPassword == password)
                    {
                        Session["contractorname"] = username;
                        Session["cid"] = id;
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginSuccess", "alert('Login successful!');", true);
                        Response.Redirect("Contractor_home.aspx");

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginFailed", "alert('Invalid username or password.');", true);
                    }
                }

            }
            else
            {

                    string inputUsername = "admin";
                    string inputPassword = "admin";
                    string username = TextBox1.Text;
                    string password = TextBox2.Text;

                    if (inputUsername == username && inputPassword == password)
                    {
                        Response.Redirect("adminHome.aspx");
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginSuccess", "alert('Login successful!');", true);

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginFailed", "alert('Invalid username or password.');", true);
                    }
                }

            }
        }

    }
