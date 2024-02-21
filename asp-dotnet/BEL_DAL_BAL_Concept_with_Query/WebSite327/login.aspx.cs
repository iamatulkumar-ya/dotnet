using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        BALAdminWork bal = new BALAdminWork();
        BELAdminWork bel = new BELAdminWork();
        bel.UName = Login1.UserName;
        bel.UPassword = Login1.Password;
        e.Authenticated = bal.checkLogin(bel);
        if (e.Authenticated)
        {
            Session["utype"] = Login1.UserName;
            Response.Redirect("~/Home.aspx");
        }
    }
}