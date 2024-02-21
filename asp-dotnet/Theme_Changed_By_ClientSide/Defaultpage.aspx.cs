using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Defaultpage : System.Web.UI.Page
{

    protected void Page_PreInit(object sender, EventArgs e)    // it is a first event that fires firstly while execution of a page
    {
        if (Request.QueryString["th"] != null)
        {
            Page.Theme = Request.QueryString["th"];
            Session["theme"] = Request.QueryString["th"];
        }

        if (Session["theme"] != null)
        {
            Page.Theme = Session["theme"].ToString();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}