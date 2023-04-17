﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeFix
{
    public partial class Login_Page : System.Web.UI.Page
    {
            protected void LoginButton_Click(object sender, EventArgs e)
            {
                if (DropDownList1.SelectedItem.Value == "User")
                {
                    string username = "myusername";
                    string password = "mypassword";

                    string inputUsername = TextBox1.Text;
                    string inputPassword = TextBox2.Text;

                    if (inputUsername == username && inputPassword == password)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginSuccess", "alert('Login successful!');", true);
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginFailed", "alert('Invalid username or password.');", true);
                    }
                }
                else if(DropDownList1.SelectedItem.Value == "Worker")
                {
                    string username = "myworker";
                    string password = "myworker";

                    string inputUsername = TextBox1.Text;
                    string inputPassword = TextBox2.Text;

                    if (inputUsername == username && inputPassword == password)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginSuccess", "alert('Login successful!');", true);
                        Response.Redirect("Worker_ho.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "LoginFailed", "alert('Invalid username or password.');", true);
                    }

                }
            else if (DropDownList1.SelectedItem.Value == "Contractor")
            {
                string username = "c";
                string password = "c";

                string inputUsername = TextBox1.Text;
                string inputPassword = TextBox2.Text;

                if (inputUsername == username && inputPassword == password)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "LoginSuccess", "alert('Login successful!');", true);
                    Response.Redirect("Contractor_home.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "LoginFailed", "alert('Invalid username or password.');", true);
                }

            }
        }
    }
}