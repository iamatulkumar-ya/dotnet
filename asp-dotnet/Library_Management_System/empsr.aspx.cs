﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void yes_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/empregistration.aspx");
    }
    protected void no_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/myhome.aspx");
    }
}