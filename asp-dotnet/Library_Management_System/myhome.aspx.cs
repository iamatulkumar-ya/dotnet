using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Default2 : System.Web.UI.Page
{
    string imgp;
    //public void selectdata()
    //{
    //    XmlTextReader txtreader = new XmlTextReader(Server.MapPath("~/Data/Empinfo.xml"));
    //    DataSet ds = new DataSet();    // holds multiple tables data
    //    ds.ReadXml(txtreader);
    //    txtreader.Close();
    //    if (ds.Tables.Count != 0)
    //    {
    //        GridView1.DataSource = ds;
    //        GridView1.DataBind();
    //    }
    //}
    protected void Page_Load(object sender, EventArgs e)
    {
        adminoperationp.Visible = false;
        staffp.Visible = false;
        adminp.Visible = false;
        if (Session["myhome"] != null)               // admin home or staff home 
        {  
            if (Session["myhome"].Equals("adminmode"))
            {

            ((MasterPage)Master).MyHomeLinkButton.Visible = true;
            adminoperationp.Visible = true;
            adminp.Visible = true;

            }
           
            if(Session["myhome"].Equals("staffmode"))
            {
                ((MasterPage)Master).MyHomeLinkButton2.Visible = true;
                adminoperationp.Visible = false;
                staffp.Visible = true;
                
            }
        }
        else
        {
            ((MasterPage)Master).MyHomeLinkButton.Visible = false;
        }

        
        Panel1.Visible = false;
        Panel2.Visible = false;
        if (Session["userid"] != null)
        {
            Panel2.Visible = true;
            Label2.Text = Request.Cookies["uname"].Value.ToString();

        }
        else
        {
            Panel1.Visible = true;
        }

       
    }
  
    
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["userid"] = null;
        Response.Redirect("~/adminhome.aspx");
    }
    protected void booksearch_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        FileUpload fu = (FileUpload)GridView1.FindControl("FileUpload1");
        Label lb = (Label)GridView1.FindControl("uploadlb");
        Image im = (Image)GridView1.FindControl("newimage");
       
        if (fu.HasFile)
        {
            imgp = "~/images/Book_images/" + fu.FileName;
            fu.SaveAs(Page.MapPath(imgp));
        }
        else
        {
            imgp = im.ImageUrl.ToString();
        }

        SqlDataSource1.UpdateParameters["Book_image"].DefaultValue = imgp;
        SqlDataSource1.Update();
            
    }
}