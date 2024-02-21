using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class radiobutton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label4.Text = string.Empty;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(RadioButton1.Checked)
        {
            Label1.Text = RadioButton1.Text;
        }

        if(RadioButton2.Checked)
        {
            Label1.Text = RadioButton2.Text;
        }
        if(RadioButton3.Checked)
        {
            Label1.Text = RadioButton3.Text;
        }
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        if(RadioButton4.Checked)
        {
            Label4.Text = RadioButton4.Text;
        }
    }
    protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
    {
        if(RadioButton5.Checked)
        {
            Label4.Text = RadioButton5.Text;
        }
    }
    protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
    {
        if(RadioButton6.Checked)
        {
            Label4.Text = RadioButton6.Text;
        }
    }
}