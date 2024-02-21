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

public partial class shopingCart_product_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach(GridViewRow gr in GridView1.Rows)
        {
            //now we find checkbox control in gridview//
            CheckBox chk = (CheckBox)gr.FindControl("CheckBox2");
            //chk is the variable of checkbox
            if(chk.Checked)
            {
                //To find the index of checkbox in every row
                object x = GridView1.DataKeys[gr.RowIndex].Value;
                SqlDataSource1.DeleteParameters["productid"].DefaultValue = x.ToString();
                SqlDataSource1.Delete();
                //now we can delete the multiple item
             }
            }
        
        
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        // this is for the master ckeckbox
        CheckBox chkm = (CheckBox)sender;
        //because sender have all information relaed to event hats why we are put sender here
        foreach(GridViewRow gr in GridView1.Rows)
        {
            CheckBox chk = (CheckBox)gr.FindControl("CheckBox2");
            if(chkm.Checked)
            {
                chk.Checked = true;
            }
            else
            {
                chk.Checked = false;
            }

        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // to delete image from image folder
        object id = GridView1.DataKeys[e.RowIndex].Value;
        string con_string = WebConfigurationManager.ConnectionStrings["shoppingcartConnectionString"].ConnectionString;
        string qry = "select productimage from addnewproduct where productid=" + id;
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        string oldpath = dt.Rows[0]["productimage"].ToString();
        FileInfo y = new FileInfo(Page.MapPath(oldpath));
        y.Delete();

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}