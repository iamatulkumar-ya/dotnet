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
        TextBox1.Text ="";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text==string.Empty)
        {
            TextBox2.Text = "null";
        }
        else
        {
            TextBox2.Text = TextBox1.Text.ToString();
        }
    }
}