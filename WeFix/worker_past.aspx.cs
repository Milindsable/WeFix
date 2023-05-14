using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeFix
{
    public partial class worker_past : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            int id = (int)Session["wid"];
            string date = DateTime.UtcNow.Date.ToString("yyyy-MM-dd");

            //string sQuery = "SELECT workerid,wname,wtype,skills,location,date from appointment where Userid='" + id + "' AND date>'" + date + "'";
            string sQuery = "SELECT Userid,username,mobileU,locationU,emailU,date from appointment where workerid='" + id + "'AND date<'" + date + "'";
            MyRepeater.DataSource = ob.getData(sQuery);
            MyRepeater.DataBind();
        }
    }
}