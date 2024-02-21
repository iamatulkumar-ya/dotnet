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
        Label2.Text = Request.Cookies["uname"].Value.ToString();
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["userid"] = null;
        Response.Redirect("~/usersignin.aspx");
    }
}