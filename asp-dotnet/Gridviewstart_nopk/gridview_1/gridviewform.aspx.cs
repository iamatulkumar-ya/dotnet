using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
public partial class gridviewform : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void insert_Click1(object sender, EventArgs e)
    {
        TextBox txt1 = (TextBox)GridView1.FooterRow.FindControl("idbox");
        TextBox txt2 = (TextBox)GridView1.FooterRow.FindControl("namebox");
        TextBox txt3 = (TextBox)GridView1.FooterRow.FindControl("citybox");
        SqlDataSource1.InsertParameters["id"].DefaultValue = txt1.Text;
        SqlDataSource1.InsertParameters["name"].DefaultValue = txt2.Text;
        SqlDataSource1.InsertParameters["city"].DefaultValue = txt3.Text;
        SqlDataSource1.Insert();
    }
}