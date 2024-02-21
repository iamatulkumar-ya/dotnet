using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    static bool status = false;
    int cid;
    string isbn;
    string imgpath;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if(status==true)
        {
            message.Text = "Data Successfully Inserted";
        }
        else
        {
               message.Text = "";
        }

        adminoperationp.Visible = false;
       
        if (Session["myhome"] != null)               // admin home or staff home 
        {
            if (Session["myhome"].Equals("adminmode"))
            {

                ((MasterPage)Master).MyHomeLinkButton.Visible = true;
                adminoperationp.Visible = true;
               

            }

            if (Session["myhome"].Equals("staffmode"))
            {
                ((MasterPage)Master).MyHomeLinkButton2.Visible = true;
                adminoperationp.Visible = false;
              

            }
        }
        else
        {
            ((MasterPage)Master).MyHomeLinkButton.Visible = false;
        }

     
        Panel10isbn.Visible = false;
        Panel13isbn.Visible = false;
        Label27.Text = "";
        
     
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
        imgmsg.Text = "";
    }
    protected void logout_Click(object sender, EventArgs e)
    {
         Session["userid"] = null;
        Response.Redirect("~/dedication.aspx");
    }
    //protected void upload_Click(object sender, EventArgs e)
    //{

    //    if (FileUpload1.HasFile)
    //    {
    //        string ex = Path.GetExtension(FileUpload1.FileName);
    //        if (ex == ".jpeg" || ex == ".jpg")
    //        {
    //            imgpath = "~/images/Book_images/" + FileUpload1.FileName;
    //            FileUpload1.SaveAs(MapPath(imgpath));
    //            imgmsg.Text = "File successfully uploaded";
    //            bookimage.ImageUrl = imgpath;
    //        }
    //        else
    //        {
    //            imgmsg.Text = "please select .jpeg or .jpg file";

    //        }
    //    }
    //    else
    //    {
    //        imgmsg.Text = "Please select a file";
    //    }
    //    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            FileUpload1.Enabled = false;
            bookimage.Enabled = false;
            upload.Enabled = false;
            imgpath = "~/images/ina.jpg";
            bookimage.ImageUrl = imgpath;
           

        }
        else
        {
            FileUpload1.Enabled = true;
            bookimage.Enabled = true;
            upload.Enabled = true;
            bookimage.ImageUrl = "";
        }
       
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)                            // for book image
        {
            FileUpload1.Enabled = false;
            bookimage.Enabled = false;
            upload.Enabled = false;
            imgpath = "~/images/ina.jpg";
            bookimage.ImageUrl = imgpath;


        }
        else
        {
            //FileUpload1.Enabled = true;
            //bookimage.Enabled = true;
            //upload.Enabled = true;
            //bookimage.ImageUrl = "";
        

        if (FileUpload1.HasFile)
        {
            string ex = Path.GetExtension(FileUpload1.FileName);
            if (ex == ".jpeg" || ex == ".jpg")
            {
                imgpath = "~/images/Book_images/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(imgpath));
                imgmsg.Text = "File successfully uploaded";
                bookimage.ImageUrl = imgpath;
            }
            else
            {
                imgmsg.Text = "please select .jpeg or .jpg file";

            }
        }
        else
        {
            imgmsg.Text = "Please select a file";
        }

        }
        SqlDataSource1.InsertParameters["Book_image"].DefaultValue = imgpath;

        if(isbn10button.Checked)                          // for ISBN
        {
            isbn = isbnbox10.Text;
        }
        if(isbn13button.Checked)
        {
            isbn = isbnbox13.Text;
        }

        SqlDataSource1.InsertParameters["ISBN"].DefaultValue = isbn;

        int s = SqlDataSource1.Insert();
        if(s==0)
        {
            message.Text = "Ooopsss....Something went wrong....Please try again";
        }
        else
        {
            status = true;
            booknamebox.Text = "";
            bookquantitybox.Text = "";
            isbnbox10.Text = "";
            isbnbox13.Text = "";
            publicationnamebox.Text = "";
            issuechargesbox.Text = "";
            purchasepricebox.Text = "";
            categorybx.Text = "";
            subcategorybox.Text = "";
            authornamebox.Text = "";
            bookdescriptionbox.Text = "";
            editionbox.Text = "";      
            Response.Redirect(Request.Url.AbsoluteUri);
            
            bookimage.ImageUrl = "";
           
        }
    }



    
    protected void isbn10button_CheckedChanged(object sender, EventArgs e)
    {
        Panel10isbn.Visible = true;
        isbnbox13.Text = "";
    }
    protected void isbn13button_CheckedChanged(object sender, EventArgs e)
    {
        Panel13isbn.Visible = true;
        isbnbox10.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        categorybx.Text = DropDownList1.SelectedItem.Value.ToString().Trim();
       
        if(DropDownList1.SelectedItem.Value.ToString().Trim()=="Others" || DropDownList1.SelectedItem.Value.ToString().Trim() == "**Select**")
        {
            categorybx.Text = "";

        }

        if(categorybx.Text.Equals(string.Empty))
        {
            if (DropDownList1.SelectedItem.Value.ToString().Trim() == "Others")
            {
                categorybx.ReadOnly = false;
                Label27.Text = "In above box please write a category";
            }
            else
            {
              
                Label27.Text = "Please select a category";
            } 
        }
        else
        {

      
        

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        string qry = "select c_id from category where c_name=@cname";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@cname", categorybx.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                cid = int.Parse(rd[0].ToString());
              
            }
        }
                
        con.Close();

        string qry1 = "Select sc_name from sub_category where c_id =" + cid + "order by sc_name";
        SqlDataAdapter ad1 = new SqlDataAdapter(qry1, ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        DataTable dt1 = new DataTable();
        ad1.Fill(dt1);

        DropDownList2.DataSource = dt1;
        DropDownList2.DataTextField = "sc_name";
        DropDownList2.DataBind();

        }

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        subcategorybox.Text = DropDownList2.SelectedItem.Text.ToString().Trim();
    }
}
