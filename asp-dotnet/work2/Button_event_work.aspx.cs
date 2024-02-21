using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Button_event_work : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int a, b;
        bool x  = int.TryParse(TextBox1.Text,out a);
        bool y =int.TryParse(TextBox2.Text,out b);
        if (x && y)
        {
            int c = a+b;
            TextBox3.Text = c.ToString();
        }
        else
        {
            Label4.Text = "Wrong Input";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int a, b;
        bool x = int.TryParse(TextBox1.Text, out a);
        bool y = int.TryParse(TextBox2.Text, out b);
        if (x && y)
        {
            int c = a * b;
            TextBox3.Text = c.ToString();
        }
        else
        {
            Label4.Text = "Wrong Input";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int a, b;
        bool x = int.TryParse(TextBox1.Text, out a);
        bool y = int.TryParse(TextBox2.Text, out b);
        if (x && y)
        {
            int c = a - b;
            TextBox3.Text = c.ToString();
        }
        else
        {
            Label4.Text = "Wrong Input";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int a, b;
        bool x = int.TryParse(TextBox1.Text, out a);
        bool y = int.TryParse(TextBox2.Text, out b);
        if (x && y)
        {
            int c = a / b;
            TextBox3.Text = c.ToString();
        }
        else
        {
            Label4.Text = "Wrong Input";
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = string.Empty;
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}