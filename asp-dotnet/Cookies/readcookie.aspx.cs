using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class readcookie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rc_Click(object sender, EventArgs e)     // read cookie
    {
        if (Request.Cookies["x"] != null)
        {
            TextBox1.Text = Request.Cookies["x"].Value;
        }

        else
            TextBox1.Text = "cookies expire";
    }
}