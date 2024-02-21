using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            string p = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Page.MapPath(p));
            SqlDataSource1.InsertParameters["imagepath"].DefaultValue = p;
            SqlDataSource1.Insert();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        object id = GridView1.DataKeys[e.RowIndex].Value;
        string con_string = WebConfigurationManager.ConnectionStrings["empInfoConnectionString"].ConnectionString;
        string qry = "select imagepath from login1 where id=" + id;
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        string oldpath = dt.Rows[0]["imagepath"].ToString();
        FileUpload fp = (FileUpload)GridView1.Rows[e.RowIndex].Cells[4].FindControl("FileUpload2");
        if(fp.HasFile)
        {
            FileInfo y = new FileInfo(Page.MapPath(oldpath));
            y.Delete();
            string p = "~/images/" + fp.FileName;
            fp.SaveAs(Page.MapPath(p));
            SqlDataSource1.UpdateParameters["imagepath"].DefaultValue = p;

        }
        else
        {
            SqlDataSource1.UpdateParameters["imagepath"].DefaultValue = oldpath;
        }


    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        object id = GridView1.DataKeys[e.RowIndex].Value;
        string con_string = WebConfigurationManager.ConnectionStrings["empInfoConnectionString"].ConnectionString;
        string qry = "select imagepath from login1 where id=" + id;
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        string oldpath = dt.Rows[0]["imagepath"].ToString();
        FileInfo y = new FileInfo(Page.MapPath(oldpath));
        y.Delete();
    }
}