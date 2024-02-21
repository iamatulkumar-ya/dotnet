using Resources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected override void InitializeCulture()
    {
        if(Request.QueryString["c"]!=null)
        {
            UICulture = Request.QueryString["c"];
        }
        base.InitializeCulture();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = registration.fname;
        Label2.Text = registration.lname;
        Label3.Text = registration.email;
        Label4.Text = registration.ph;
        Button1.Text = registration.btn;
        Image1.ImageUrl = registration.img;
       
    }
}