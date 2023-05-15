using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WeFix
{
    public partial class User_past_appointment : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            int id = (int)Session["uid"];
            string date = DateTime.UtcNow.ToString("yyyy-MM-dd");

            string sQuery = "SELECT workerid,wname,wtype,skills,location,date from appointment where Userid='"+id+"' AND date<'"+date+"'";
            MyRepeater.DataSource = ob.getData(sQuery);
            MyRepeater.DataBind();
            
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;
            Session["workername"] = (item.FindControl("lblWname") as Label).Text;
            Session["workerid"] = (item.FindControl("lblid") as Label).Text;

            Response.Redirect("Feedback.aspx"); 
        }

        /* protected void GetValue(object sender, EventArgs e)
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
}*/
    }
}