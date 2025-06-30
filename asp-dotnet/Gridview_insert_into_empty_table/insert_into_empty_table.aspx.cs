using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class insert_into_empty_table : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void insert2_Click(object sender, EventArgs e)
    {
        
        
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        
       

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName == "insertaf")
        {
            TextBox txt2 = (TextBox)GridView1.FooterRow.FindControl("namebox");
            TextBox txt3 = (TextBox)GridView1.FooterRow.FindControl("typebox");
            TextBox txt4 = (TextBox)GridView1.FooterRow.FindControl("pricebox");
            FileUpload fil = (FileUpload)GridView1.FooterRow.FindControl("FileUpload2");


            SqlDataSource1.InsertParameters["Product_Name"].DefaultValue = txt2.Text;
            SqlDataSource1.InsertParameters["Product_Type"].DefaultValue = txt3.Text;
            SqlDataSource1.InsertParameters["Product_Price"].DefaultValue = txt4.Text;

            string img_path;
            if (fil.HasFile)
            {
                string ex = Path.GetExtension(fil.FileName);
                if (ex == ".jpeg" || ex == ".jpg")
                {
                    img_path = "~/images/" + fil.FileName;
                    fil.SaveAs(MapPath(img_path));
                    SqlDataSource1.InsertParameters["Product_image"].DefaultValue = img_path;
                }

            }

            SqlDataSource1.Insert();
        }

        if(e.CommandName == "insertbe")
        {
           
            Control c = ((Button)e.CommandSource).Parent;          
            TextBox txt2 = (TextBox)c.FindControl("namebox");
            TextBox txt3 = (TextBox)c.FindControl("typebox");
            TextBox txt4 = (TextBox)c.FindControl("pricebox");


            FileUpload fil = (FileUpload)c.FindControl("FileUpload2");

        
            SqlDataSource1.InsertParameters["Product_Name"].DefaultValue = txt2.Text;
            SqlDataSource1.InsertParameters["Product_Type"].DefaultValue = txt3.Text;
            SqlDataSource1.InsertParameters["Product_Price"].DefaultValue = txt4.Text;

            string img_path;
            if (fil.HasFile)
            {
                string ex = Path.GetExtension(fil.FileName);
                if (ex == ".jpeg" || ex == ".jpg")
                {
                    img_path = "~/images/" + fil.FileName;
                    fil.SaveAs(MapPath(img_path));
                    SqlDataSource1.InsertParameters["Product_image"].DefaultValue = img_path;
                }

            }
            
            SqlDataSource1.Insert();
            

        }
    }
}