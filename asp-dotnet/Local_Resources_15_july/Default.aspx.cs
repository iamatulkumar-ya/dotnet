﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected override void InitializeCulture()
    {
        if (Request.QueryString["c"]!= null)
        {
            UICulture = Request.QueryString["c"];
        }
        base.InitializeCulture();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    
}