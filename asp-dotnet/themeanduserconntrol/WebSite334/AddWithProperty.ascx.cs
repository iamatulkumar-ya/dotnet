using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
public partial class AddWithProperty : System.Web.UI.UserControl
{
    public Color setBackColor { get; set; }
    public Color setForeColor { get; set; }
    public Color setBorderColor { get; set; }
    public Unit setBorderWidth { get; set; }
    public BorderStyle setBorderStyle { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.BackColor = setBackColor;
        Panel1.ForeColor = setForeColor;
        Panel1.BorderStyle = setBorderStyle;
        Panel1.BorderColor = setBorderColor;
        Panel1.BorderWidth = setBorderWidth;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox3.Text = (int.Parse(TextBox1.Text) + int.Parse(TextBox2.Text)).ToString();
    }
}