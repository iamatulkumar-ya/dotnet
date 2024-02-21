using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    static int n = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Label1.Font.Name = "COMIC SANS MS";
        Label1.Font.Italic = true;
        Label1.Font.Size = 24;
        Label1.BackColor = Color.Black;
        Label1.ForeColor = Color.White;
        Label1.BorderColor = Color.Blue;
        Label1.BorderWidth = 24;
        Label1.BorderStyle = BorderStyle.Solid;
        Label1.Height = 100;
        Label1.CssClass = "hello";
        Label1.ToolTip = "hello i am label";
        
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
    //    Random rn = new Random();
    //    n = rn.Next(1, 9);
        n += 1;
        if (n <= 10)
        {

            if (n == 1)
                Label1.ForeColor = Color.Red;
            if (n == 2)
                Label1.ForeColor = Color.Yellow;
            if (n == 3)
                Label1.ForeColor = Color.Green;
            if (n == 4)
                Label1.ForeColor = ColorTranslator.FromHtml("#808080");
            if (n == 5)
                Label1.ForeColor = Color.Gold;
            if (n == 6)
                Label1.ForeColor = ColorTranslator.FromHtml("#ad5b0b");
            if (n == 7)
                Label1.ForeColor = Color.Lime;
            if (n == 8)
                Label1.ForeColor = Color.Pink;
            if (n == 9)
                Label1.ForeColor = Color.Blue;
            if (n == 10)
                Label1.ForeColor = Color.Olive;

        }
        else n = 0;
    }
}