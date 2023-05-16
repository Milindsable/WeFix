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
    public partial class Profile_worker : System.Web.UI.Page
    {
        Second ob = new Second();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();


            
            int id = (int)Session["wid"];
            string sQuery = "SELECT * from worker where wid='" + id + "'";
            
            DetailsView1.DataSource = ob.getData(sQuery);
            DetailsView1.DataBind();
            

        }
    }
}