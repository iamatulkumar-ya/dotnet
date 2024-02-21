using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class new_captcha : System.Web.UI.Page
{
    string s = "012Abc";
   static int sum;
   static string a;
    static string s1;
    static int sum1;
    static string a1;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text =s;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach(char c in s)
        {
            a += "+" + ((int)c).ToString();
            sum += (int)c;
            Response.Write((int)c + "");
        }

        Label2.Text = a;
        Label3.Text = sum.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        s1 = TextBox1.Text;
        Label4.Text = s1;
        
        foreach(char c1 in s1)
        {
            a1 += "+" + ((int)c1).ToString();
            sum1 += (int)c1;

            Response.Write((int)c1 + "");

        }

        Label5.Text = a1;
        Label6.Text = sum1.ToString();

        if (sum1==sum)
            Label7.Text = "matched";
        else
            Label7.Text = "miss matched";
    }
}