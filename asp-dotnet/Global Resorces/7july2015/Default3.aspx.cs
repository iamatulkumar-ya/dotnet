﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected override void InitializeCulture()
    {
        if (Session["culture"] != null)
        {
            UICulture = Session["culture"].ToString();

        }
        base.InitializeCulture();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}