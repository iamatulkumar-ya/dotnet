﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class welcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        TextBox1.Text = Session["email"].ToString();
        TextBox2.Text = Session["pass"].ToString();
        

       
    }
}