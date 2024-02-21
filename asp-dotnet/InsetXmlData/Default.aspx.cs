using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
public partial class _Default : System.Web.UI.Page 
{
    public void selectData()
    {
        XmlTextReader txtreader = new XmlTextReader(Server.MapPath("~/App_Data/rajpal.xml"));
        DataSet ds = new DataSet();
        ds.ReadXml(txtreader);
        txtreader.Close();
        if (ds.Tables.Count != 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            selectData();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        XmlDocument xd = new XmlDocument();
        xd.Load(Server.MapPath("~/App_Data/rajpal.xml"));
        XmlElement parent = xd.CreateElement("ContactInfo");
        XmlElement name = xd.CreateElement("name");
        name.InnerText = TextBox1.Text;

        XmlElement location = xd.CreateElement("location");
        location.InnerText = TextBox2.Text;

        XmlElement email = xd.CreateElement("email");
        email.InnerText = TextBox3.Text;

        XmlElement phone = xd.CreateElement("phone");
        phone.InnerText = TextBox4.Text;

        parent.AppendChild(name);
        parent.AppendChild(location);

        parent.AppendChild(email);
        parent.AppendChild(phone);

        xd.DocumentElement.AppendChild(parent);

        xd.Save(Server.MapPath("~/App_Data/rajpal.xml"));
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        selectData();
    }
   
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        selectData();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txt1 = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txt2 = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txt3 = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        TextBox txt4 = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
     
        selectData();
        DataSet ds = (DataSet)GridView1.DataSource;
       
        ds.Tables[0].Rows[e.RowIndex]["name"] = txt1.Text;
        ds.Tables[0].Rows[e.RowIndex]["location"] = txt2.Text;
        ds.Tables[0].Rows[e.RowIndex]["email"] = txt3.Text;
        ds.Tables[0].Rows[e.RowIndex]["phone"] = txt4.Text;
        ds.WriteXml(Server.MapPath("~/App_Data/rajpal.xml"));
        GridView1.EditIndex = -1;
        selectData();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        selectData();
        DataSet ds = (DataSet)GridView1.DataSource;
        ds.Tables[0].Rows[e.RowIndex].Delete();
        ds.WriteXml(Server.MapPath("~/App_Data/rajpal.xml"));
        selectData();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        selectData();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}