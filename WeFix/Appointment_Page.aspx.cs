using MySql.Data.MySqlClient;
using Mysqlx.Crud;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeFix
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        //L.Text = Session["userdata"].ToString();

        MySqlConnection con;
        MySqlCommand cmd;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new MySqlConnection("Data Source=localhost;Database=wefix;User ID = root; Password = nikita");
            con.Open();
            string pho = (String)Session["phone"];
            string str = "select wid from worker where phoneno='"+pho+"'";
            cmd = new MySqlCommand(str, con);
            MySqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            int Id = Convert.ToInt32(sdr["wid"]);
            TextBox1.Text = Session["wname"].ToString();
            TextBox2.Text = Id.ToString();
            TextBox3.Text = Session["workt"].ToString();
            TextBox4.Text = Session["skill"].ToString();
            TextBox5.Text = Session["location"].ToString();
            sdr.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime dt = Calendar1.SelectedDate;
            DateTime cdt = DateTime.UtcNow.Date;
            int uid = (int)Session["uid"];

            string str = "SELECT COUNT(*) FROM appointment where Userid='"+uid+"' AND date='"+ dt.ToString("yyyy/MM/dd") + "'";
            //select count(*) from wefix.appointment where Userid = 6 AND date = '2023-05-19';
            cmd = new MySqlCommand(str, con);
            int count = Convert.ToInt32(cmd.ExecuteScalar());

            if (count > 1)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('you cant appoint more than 2 workers for same date!!!');", true);
            }
            else 
            { 
                    if (dt < cdt)
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "DateSelection", "alert('Cant select past dates !!!');", true);
                    }
                    else
                    {
                        str = "insert into appointment(Userid,workerid,wname,wtype,skills,location,date)  values ('" + uid + "','" + TextBox2.Text.ToString() + "','" + TextBox1.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + dt.ToString("yyyy/MM/dd") + "')";
                        cmd = new MySqlCommand(str, con);
                        cmd.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, GetType(), "AppointmentSuccess", "alert('appointment booked!');", true);
                        con.Close();
                    }
            }
        }
    }
}