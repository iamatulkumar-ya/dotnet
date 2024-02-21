using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void t1_Tick(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
}