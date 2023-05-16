using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WeFix
{
    public partial class Contractor_feedback : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sQuery = "select username,feedtext from feedback_contractor where contrid='" + Session["cid"] + "'";
            dlCustomers.DataSource = ob.getData(sQuery);
            dlCustomers.DataBind();
        }
    }
}