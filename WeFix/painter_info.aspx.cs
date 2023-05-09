using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class painter_info : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            string sQuery = "SELECT name,work_type,skills,phoneno,email,location,price from worker where work_type='painter'";
            MyRepeater.DataSource =ob.getData(sQuery);
            MyRepeater.DataBind();
        }
        protected void GetValue(object sender, EventArgs e)
        {
            //Reference the Repeater Item using Button.
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            //Reference the Label and TextBox.
            string phone = (item.FindControl("lblphoneno") as Label).Text;
            string name = (item.FindControl("lblName") as Label).Text;
            string work = (item.FindControl("lblWorktype") as Label).Text;
            string skill = (item.FindControl("lblskills") as Label).Text;
            string location = (item.FindControl("lbllocation") as Label).Text;
            //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + message + "');", true);
            Session["wname"] = name;
            Session["workt"] = work;
            Session["skill"] = skill;
            Session["location"] = location;
            Session["phone"] = phone;
            Response.Redirect("Appointment_Page.aspx");
        }
    }
}