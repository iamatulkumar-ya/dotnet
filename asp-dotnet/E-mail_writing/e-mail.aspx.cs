using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class e_mail : System.Web.UI.Page
{
   static int a = 480;
    protected void Page_Load(object sender, EventArgs e)
    {
        time1.Text = "480 Seconds left";
     
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {

        a -= 1;
        if (a == 0)
        {
            a = 480;
            Response.Redirect("~/timeout.aspx");
        }
           

        else
        time1.Text = a.ToString() + " " + "Seconds left";
     
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        if (TextBox3.Text.Equals(string.Empty))
            Response.Redirect("~/eliminated.aspx");
        else
        {

            Response.Redirect("~/success.aspx");
        }
         
    }
}