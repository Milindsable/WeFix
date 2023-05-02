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
    public partial class carpenter_info : System.Web.UI.Page
    {
        MySqlConnection con = new MySqlConnection("Data Source = localhost; Database=;User ID = root; Password=nikita");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string sQuery = "SELECT name,work_type,skills,phoneno,email,location from worker where work_type='carpainter'";
            GridView1.DataSource = getData(sQuery);
            GridView1.DataBind();
        }
        private DataTable getData(string sQuery)
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
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Appoint")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = GridView1.Rows[rowIndex];
                string name = row.Cells[2].Text;
                //Fetch value of Name.
                //string name = (row.FindControl("txtName") as TextBox).Text;

                //Fetch value of Country
                //string country = row.Cells[1].Text;

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Name: " + name, true);
            }
        }
    }
}