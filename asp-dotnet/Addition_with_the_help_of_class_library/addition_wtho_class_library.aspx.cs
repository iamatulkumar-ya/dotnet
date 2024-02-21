using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using addition;

// How to use own namespace?
// First create a library file and rebuild it....
// then open console or web application and add reference and browse created library file 
// and then use a name space which is defined in that library and now access these methods and classes 


public partial class addition_wtho_class_library : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        add a = new add();
        int g = a.sum(int.Parse(TextBox1.Text), int.Parse(TextBox2.Text));
        TextBox3.Text = g.ToString();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";

    }
}