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
        Image1.ImageUrl = "~/images/1.jpg";
        if (Session["myhome"] != null)               // admin home or staff home 
        {
            if (Session["myhome"].Equals("adminmode"))
            {

                ((MasterPage)Master).MyHomeLinkButton.Visible = true;

            }

            if (Session["myhome"].Equals("staffmode"))
            {
                ((MasterPage)Master).MyHomeLinkButton2.Visible = true;
            }
        }
        else
        {
            ((MasterPage)Master).MyHomeLinkButton.Visible = false;
        }

        Panel1.Visible = false;
        Panel2.Visible = false;
        if(Session["userid"]!=null)
        {
            Panel2.Visible = true;
            Label2.Text = Request.Cookies["uname"].Value.ToString();

        }
        else
        {
            Panel1.Visible = true;
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["userid"] = null;
        Response.Redirect("~/Homepage.aspx");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random rn = new Random();
        int n = rn.Next(1, 8);
        if (n == 1)
            Image1.ImageUrl = "~/images/1.jpg";
        if (n == 2)
            Image1.ImageUrl = "~/images/2.jpg";
        if (n == 3)
            Image1.ImageUrl = "~/images/3.jpg";
        if (n == 4)
            Image1.ImageUrl = "~/images/4.png";
        if (n == 5)
            Image1.ImageUrl = "~/images/5.jpg";
        if (n == 6)
            Image1.ImageUrl = "~/images/6.jpg";
        if (n == 7)
            Image1.ImageUrl = "~/images/7.jpg";
        if (n == 8)
            Image1.ImageUrl = "~/images/8.png";
 

    }
}