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
    public partial class Profile_contractor : System.Web.UI.Page
    {
        Second ob = new Second();
       // MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=;User ID = root; Password=nikita");
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();

            int id = (int)Session["cid"];
            string sQuery = "SELECT * from contractor where cid='" + id + "'";
            DetailsView1.DataSource = ob.getData(sQuery);
            DetailsView1.DataBind();
            

        }
    }
}