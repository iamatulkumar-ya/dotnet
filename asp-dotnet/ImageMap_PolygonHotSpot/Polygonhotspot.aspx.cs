using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Polygonhotspot : System.Web.UI.Page
{
   static String mycoordinates=null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        mycoordinates += e.X.ToString() + "," + e.Y.ToString() + ",";
    }

    protected void coordinate_Click(object sender, EventArgs e)
    {
        string actcoord = mycoordinates.Remove(mycoordinates.Length-1);
        PolygonHotSpot p = new PolygonHotSpot();
        p.Coordinates = actcoord;
        p.HotSpotMode = HotSpotMode.Navigate;
        p.NavigateUrl = "~/polygonhotspot.aspx";        
        ImageMap1.HotSpots.Add(p);
        mycoordinates = null;
    }
}