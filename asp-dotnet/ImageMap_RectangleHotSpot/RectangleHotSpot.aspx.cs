using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RectangleHotSpot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
    {
        switch(e.PostBackValue)
        {
            case "home":
                ImageMap1.ImageUrl = "~/pics/3.bmp";
                break;
            case "contactme":
                ImageMap1.ImageUrl = "~/pics/4.jpg";
                break;

        }
    }
}