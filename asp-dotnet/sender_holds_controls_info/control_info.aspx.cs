using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class control_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sub_Click(object sender, EventArgs e)
    {
        Button b = (Button)sender;  // type casting convert sender into button type variable
        getid.Text = b.ID;           // if sender holds id of submit button then it will show result in "GET ID HERE" label 
        getname.Text = b.Text;     // if sender holds text write upon button then it will show result in "GET Text HERE" label
    }
}