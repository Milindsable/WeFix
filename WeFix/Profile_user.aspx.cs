using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeFix
{
   
    public partial class Profile_user : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=;User ID = root; Password=nikita");
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();


            con.Open();
            int id = (int)Session["uid"];
            string sQuery = "SELECT username,mobileno,location,email from user where uid='" + id +"'";
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