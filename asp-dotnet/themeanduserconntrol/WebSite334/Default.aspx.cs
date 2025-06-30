﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_PreInit(object sender, EventArgs e)
    {
       if(Request.QueryString["th"]!=null)
       {
           Page.Theme = Request.QueryString["th"];
           Session["theme"] = Request.QueryString["th"];
       }
       if (Session["theme"] != null)
       {
           Page.Theme = Session["theme"].ToString();

       }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}