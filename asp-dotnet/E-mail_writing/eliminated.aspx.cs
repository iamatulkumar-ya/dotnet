﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class eliminated : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void retry_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/e-mail.aspx");
    }
}