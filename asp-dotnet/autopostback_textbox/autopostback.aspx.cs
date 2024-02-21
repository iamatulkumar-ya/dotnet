using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class autopostback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox2.AutoPostBack = true;           // now textbox2 working as a button

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
       
          int a= int.Parse(TextBox1.Text);
          int b = int.Parse(TextBox2.Text);
    
       
           int c = a + b;
           TextBox3.Text = c.ToString();
       

    }
}