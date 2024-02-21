using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class data_entery : System.Web.UI.Page
{  
    public void insertdata()
    {
        int g = SqlDataSource1.Insert();
        if (g != 0)
        {
            msg.Text = "Data inserted";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            insertdata();
         
        }
        else
        {
            Server.Transfer("~/data_entery.aspx");
        }
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        insertdata();
        
    }
}