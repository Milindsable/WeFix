﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySqlX.XDevAPI.Relational;


namespace WeFix
{
    public partial class Worker_feedback : System.Web.UI.Page
    {
        Second ob = new Second();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sQuery = "select username,feedtext from feedback where wid='" + Session["wid"] + "'";
            dlCustomers.DataSource = ob.getData(sQuery);
            dlCustomers.DataBind();
        }
    }
}