﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void logoutbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");
    }
    protected void contactusbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/contactus.aspx");
    }
    protected void addsuplierbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/addsuplier.aspx");
    }
}