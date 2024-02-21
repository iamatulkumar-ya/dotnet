using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gridview2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void insert_Click(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName == "insertaf")
        {
            TextBox txt1 = (TextBox)GridView1.FooterRow.FindControl("idbox");
            TextBox txt2 = (TextBox)GridView1.FooterRow.FindControl("namebox");
            TextBox txt3 = (TextBox)GridView1.FooterRow.FindControl("passwordbox");
            SqlDataSource1.InsertParameters["id"].DefaultValue = txt1.Text;
            SqlDataSource1.InsertParameters["Name"].DefaultValue = txt2.Text;
            SqlDataSource1.InsertParameters["Password"].DefaultValue = txt3.Text;
            SqlDataSource1.Insert();

        }
    }
}