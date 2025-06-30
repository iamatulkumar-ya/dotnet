using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class checkbox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "";
        Label4.Text = "";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(CheckBox1.Checked)
        {
            Label2.Text = CheckBox1.Text;
        }
        if(CheckBox2.Checked)
        {
            Label2.Text += "," + CheckBox2.Text;
        }
        if(CheckBox3.Checked)
        {
            Label2.Text += "," + CheckBox3.Text;
        }
        if(CheckBox4.Checked)
        {
            Label2.Text += "," + CheckBox4.Text;
        }
    }
    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox5.Checked)
        {
            Label4.Text = CheckBox5.Text;
        }
        
    }
    protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
    {
        if(CheckBox6.Checked)
        {
            Label4.Text += "," + CheckBox6.Text;
        }
    }
    protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
    {
        if(CheckBox7.Checked)
        {
            Label4.Text += "," + CheckBox7.Text;
        }
    }
    protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
    {
        if(CheckBox8.Checked)
        {
            Label4.Text += "," + CheckBox8.Text;
        }
    }
}