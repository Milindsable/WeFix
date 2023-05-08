using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class Second : System.Web.UI.MasterPage
    {
        MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=;User ID = root; Password=nikita");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }
        public DataTable getData(string sQuery)
        {
            MySqlDataAdapter sdt = new MySqlDataAdapter();
            DataTable dTable = new DataTable();

            con = new MySqlConnection("Data Source=localhost;Database=wefix;User ID = root; Password = nikita");
            con.Open();
            MySqlCommand cmd = new MySqlCommand(sQuery, con);
            sdt.SelectCommand = cmd;
            sdt.Fill(dTable);
            con.Close();
            return dTable;
        }

        protected void logout(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("Login_Page.aspx");
        }
    }
}