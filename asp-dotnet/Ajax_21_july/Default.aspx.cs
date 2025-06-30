using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        i++;
        Label1.Text = i.ToString();
        if(i==12)
        {
            Response.Redirect("~/timmer.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Timer1.Enabled = true;
    }
}