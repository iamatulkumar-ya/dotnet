using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

public partial class dynamiccreationoftextbox : System.Web.UI.Page
{
    static string s;
    public void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "text shows here";
        Label lb = new Label();
        lb.ID = "lb1";
        lb.Text = "Hello Baby";
        
        Panel1.Controls.Add(lb);
     
       
        
    }
    public void Button1_Click(object sender, EventArgs e)
    {


        Label1.Text = 
    }
}