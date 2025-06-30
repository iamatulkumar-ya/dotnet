using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
public partial class _Default : System.Web.UI.Page
{
    protected override void InitializeCulture()
    {
        if(Request.QueryString["c"]!=null)
        {
            UICulture = Request.QueryString["c"];
            Session["culture"] = Request.QueryString["c"];
           
        }
        if (Session["culture"] != null)
        {
            UICulture = Session["culture"].ToString();
        }
        base.InitializeCulture();
    }
    protected void Page_Load(object sender, EventArgs e)
    {


       

    }
}