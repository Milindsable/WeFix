using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySqlX.XDevAPI.Relational;


namespace WeFix
{
    public partial class Worker_feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=wefix;User ID = root; Password=nikita");
            con.Open();
            MySqlDataAdapter sdt = new MySqlDataAdapter();
            DataTable dTable = new DataTable();
            string sQuery = "select username,feedtext from feedback where wid='" + Session["wid"] + "'";
            MySqlCommand cmd = new MySqlCommand(sQuery, con);
            sdt.SelectCommand = cmd;
            sdt.Fill(dTable);
           dlCustomers.DataSource = dTable;
           dlCustomers.DataBind();
            con.Close();
        }
    }
}