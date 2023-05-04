using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class carpenter_info : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sQuery = "SELECT name,work_type,skills,phoneno,email,location from worker where work_type='carpainter'";
            MyRepeater.DataSource = ob.getData(sQuery);
            MyRepeater.DataBind();
        }
        protected void GetValue(object sender, EventArgs e)
        {
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            string message = "Name: " + (item.FindControl("lblName") as Label).Text;
            message += "\\nWork Type: " + (item.FindControl("lblWorktype") as Label).Text;
            message += "\\nSkills: " + (item.FindControl("lblskills") as Label).Text;

            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            Session["userdata"] = message;
            Response.Redirect("WebForm5.aspx");
        }
    }
}