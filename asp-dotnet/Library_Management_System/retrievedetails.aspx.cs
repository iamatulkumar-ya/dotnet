using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        username.Text = Request.Cookies["uname"].Value.ToString();
        userkey.Text = Request.Cookies["userkey"].Value.ToString();
        userid.Text = Request.Cookies["userid"].Value.ToString();
        userpassword.Text = Request.Cookies["userpassword"].Value.ToString();
    }
}