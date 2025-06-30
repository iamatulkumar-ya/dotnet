using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="cetpa1")
        {
            TextBox txt1 = (TextBox)GridView1.FooterRow.FindControl("TextBox1");
            TextBox txt2 = (TextBox)GridView1.FooterRow.FindControl("TextBox2");
            TextBox txt3 = (TextBox)GridView1.FooterRow.FindControl("TextBox3");
            SqlDataSource1.InsertParameters["id"].DefaultValue = txt1.Text;
            SqlDataSource1.InsertParameters["name"].DefaultValue = txt2.Text;
            SqlDataSource1.InsertParameters["password"].DefaultValue = txt3.Text;
            SqlDataSource1.Insert();
        }
        if(e.CommandName.Equals("cetpa2"))
        {
            Control c = ((Button)e.CommandSource).Parent;
            TextBox txt4 = (TextBox)c.FindControl("TextBox4");
            TextBox txt5 = (TextBox)c.FindControl("TextBox5");
            TextBox txt6 = (TextBox)c.FindControl("TextBox6");
            SqlDataSource1.InsertParameters["id"].DefaultValue = txt4.Text;
            SqlDataSource1.InsertParameters["name"].DefaultValue = txt5.Text;
            SqlDataSource1.InsertParameters["password"].DefaultValue = txt6.Text;
            SqlDataSource1.Insert();
        }

    }
}