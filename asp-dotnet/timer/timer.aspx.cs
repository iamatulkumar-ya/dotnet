using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class timer : System.Web.UI.Page
{
    int n;
    protected void Page_Load(object sender, EventArgs e)
    {
        simage.ImageUrl = "~/1.jpg";
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random rn = new Random();
        n = rn.Next(1, 9);
        if (n == 1)
            simage.ImageUrl = "~/1.jpg";
        if (n == 2)
            simage.ImageUrl = "~/2.jpg";
        if (n == 3)
            simage.ImageUrl = "~/3.jpg";
        if (n == 4)
            simage.ImageUrl = "~/4.jpg";
        if (n == 5)
            simage.ImageUrl = "~/5.jpg";
        if (n == 6)
            simage.ImageUrl = "~/6.jpg";
        if (n == 7)
            simage.ImageUrl = "~/7.jpg";
        if (n == 8)
            simage.ImageUrl = "~/8.jpg";
        if (n == 9)
            simage.ImageUrl = "~/9.jpg";

      
    }
   
}