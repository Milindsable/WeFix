using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace WeFix
{
    public partial class Contractor_appointment : System.Web.UI.Page
    {
        MySqlConnection con;
        MySqlCommand cmd;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new MySqlConnection("Data Source=localhost;Database=wefix;User ID = root; Password = nikita");
            con.Open();
            string pho = (String)Session["phone"];
            string str = "select cid from contractor where phoneno='" + pho + "'";
            cmd = new MySqlCommand(str, con);
            MySqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            int Id = Convert.ToInt32(sdr["cid"]);
            TextBox1.Text = Session["contName"].ToString();
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

            if (dt < cdt)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "DateSelection", "alert('Cant select past dates !!!');", true);
            }
            else
            {

                int uid = (int)Session["uid"];
                str = "insert into appointment_contractor(Userid,contid,contName,wtype,skills,location,date)  values ('" + uid + "','" + TextBox2.Text.ToString() + "','" + TextBox1.Text.ToString() + "','" + TextBox3.Text.ToString() + "','" + TextBox4.Text.ToString() + "','" + TextBox5.Text.ToString() + "','" + dt.ToString("yyyy/MM/dd") + "')";
                cmd = new MySqlCommand(str, con);
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, GetType(), "AppointmentSuccess", "alert('appointment booked!');", true);
                con.Close();
            }
        }
    }
}