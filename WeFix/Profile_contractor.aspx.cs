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
        MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=;User ID = root; Password=nikita");
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();


            con.Open();
            int id = (int)Session["cid"];
            string sQuery = "SELECT * from contractor where cid='" + id + "'";
            MySqlDataAdapter sdt = new MySqlDataAdapter();
            DataSet ds = new DataSet();

            con = new MySqlConnection("Data Source=localhost;Database=wefix;User ID = root; Password = nikita");
            con.Open();
            MySqlCommand cmd = new MySqlCommand(sQuery, con);
            sdt.SelectCommand = cmd;
            sdt.Fill(ds);
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
            con.Close();

        }
    }
}