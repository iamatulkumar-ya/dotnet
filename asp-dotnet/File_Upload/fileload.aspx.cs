using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class fileload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string p = "~/upload/" + FileUpload1.FileName;              // create virtual path and '~' denotes upload folder exists in a current application
            FileUpload1.SaveAs(Page.MapPath(p));
            Label1.Text = "File saved";
        }
        else 
        {
            Label1.Text = "please select an image";
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        if(FileUpload2.HasFile)
        {

            string ex = Path.GetExtension(FileUpload2.FileName);

            if (ex == ".jpg" || ex == ".jpg") 
            {
                string p = "~/upload/" + FileUpload2.FileName;
                FileUpload2.SaveAs(Page.MapPath(p));
                Label2.Text = "File Saved";
            }
            else
            {
                Label2.Text = "Please select only jpeg or jpg formats of file";
            }
        }
        else
        {
            Label2.Text = "Please select only image file";
        }
    }
}