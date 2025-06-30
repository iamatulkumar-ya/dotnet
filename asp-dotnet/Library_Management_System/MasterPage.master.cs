using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public LinkButton MyHomeLinkButton
    {
        get
        {
            return this.myhome;
        }
    }
    public LinkButton MyHomeLinkButton2
    {
        get
        {
            return this.myhome2;
        }
    }
}
