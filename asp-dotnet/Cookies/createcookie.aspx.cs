using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class createcookie : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cc_Click(object sender, EventArgs e)  // create cookie
    {
        // Session Cookies
        //Response.Cookies["x"].Value = TextBox1.Text;
         // OR
        //HttpCookie y = new HttpCookie("x");
        //y.Value = TextBox1.Text;
        //Response.Cookies.Add(y);


        // Persistent Cookie

        Response.Cookies["x"].Value = TextBox1.Text;
        Response.Cookies["x"].Expires = DateTime.Now.AddSeconds(20);
        //OR

        HttpCookie y = new HttpCookie("x");
        y.Value = TextBox1.Text;
        y.Expires = DateTime.Now.AddSeconds(20);
        Response.Cookies.Add(y);



    }
}