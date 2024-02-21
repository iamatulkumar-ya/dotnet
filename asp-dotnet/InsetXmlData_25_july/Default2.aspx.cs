using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlTextReader txtreader = new XmlTextReader(Server.MapPath("~/App_Data/rajpal.xml"));
        DataSet ds = new DataSet();
        ds.ReadXml(txtreader);
        txtreader.Close();
        string[] x = new string[2];
        x[0] = TextBox1.Text;
        x[1] = TextBox2.Text;
        ds.Tables[0].PrimaryKey = new DataColumn[] 
        { 
            ds.Tables[0].Columns["name"],
            ds.Tables[0].Columns["location"] 
        };
        DataRow d = ds.Tables[0].Rows.Find(x);
        if (d != null)
        {
            Response.Write("hello");
        }
        else
        {
            Response.Write("Wrong");
        }

    }
}