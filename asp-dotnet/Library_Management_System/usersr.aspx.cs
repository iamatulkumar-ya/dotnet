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
        userid.Text = Request.Cookies["userid"].Value.ToString();
        userpassword.Text = Request.Cookies["userpassword"].Value.ToString();
        userkey.Text = Request.Cookies["userkey"].Value.ToString();
    }
 
}