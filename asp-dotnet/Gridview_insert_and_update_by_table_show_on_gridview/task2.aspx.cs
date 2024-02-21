using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class task2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        update.Enabled = false;
        delete.Enabled = false;
    }
    protected void edit_Click(object sender, EventArgs e)
    {
        object x = GridView1
        idbox.Text = x.ToString();
        idbox.Enabled = false;
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["id"].DefaultValue = idbox.Text;
        SqlDataSource1.InsertParameters["name"].DefaultValue = namebox.Text;
        SqlDataSource1.InsertParameters["password"].DefaultValue = passwordbox.Text;
        int g = SqlDataSource1.Insert();
        if(g!=0)
        {
            msg.Text = "Data Inserted";
        }

        idbox.Text = "";
        namebox.Text = string.Empty;
        passwordbox.Text = string.Empty;
    }
    protected void update_Click(object sender, EventArgs e)
    {
        SqlDataSource1.UpdateParameters["id"].DefaultValue = idbox.Text;
        SqlDataSource1.UpdateParameters["name"].DefaultValue = namebox.Text;
        SqlDataSource1.UpdateParameters["password"].DefaultValue = passwordbox.Text;
        int g = SqlDataSource1.Update();
        if(g!=0)
        {
            msg.Text = "Data Updated";
        }

        idbox.Text = "";
        namebox.Text = string.Empty;
        passwordbox.Text = string.Empty;
        insert.Enabled = true;
        update.Enabled = false;
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        SqlDataSource1.DeleteParameters["id"].DefaultValue = idbox.Text ;
        int g = SqlDataSource1.Delete();
        if(g!=0)
        {
            msg.Text = "Data Deleted";
        }

    }
}