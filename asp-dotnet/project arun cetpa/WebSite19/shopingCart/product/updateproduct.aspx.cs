using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class shopingCart_product_updateproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        object id = GridView2.DataKeys[e.RowIndex].Value;
        string con_string = WebConfigurationManager.ConnectionStrings["shoppingcartConnectionString"].ConnectionString;
        string qry = "select productimage from addnewproduct where productid=" +id;
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        string oldpath = dt.Rows[0]["productimage"].ToString();
        FileUpload pic = (FileUpload)GridView2.Rows[e.RowIndex].Cells[4].FindControl("FileUpload1");
        if(pic.HasFile)
        {
            FileInfo y = new FileInfo(Page.MapPath(oldpath));
            y.Delete();
            string p = "~/shopingCart/images/" + pic.FileName;
            pic.SaveAs(Page.MapPath(p));
            SqlDataSource1.UpdateParameters["productimage"].DefaultValue = p;
            
        }
        else
        {
            SqlDataSource1.UpdateParameters["productimage"].DefaultValue = oldpath;

        }

      
    }
}
