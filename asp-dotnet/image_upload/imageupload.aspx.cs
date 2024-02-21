using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class imageupload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        msg.Text = string.Empty;
    }
    protected void upload_Click(object sender, EventArgs e)
    {
        string p;
        if(FileUpload1.HasFile)
        {
            string ex = Path.GetExtension(FileUpload1.FileName);
            if(ex ==".jpeg" || ex==".jpg" || ex==".png" || ex== ".gif" || ex==".bmp")
            {
                p = "~/fileupload" + FileUpload1.FileName;    // creates virtual path
                FileUpload1.SaveAs(Page.MapPath(p));        // coverts virtual path into physical path
                msg.Text = "File Uploaded";
                Image1.ImageUrl = p;
            }
            else
            {
                msg.Text = "Please Select Only Image File";
            }
         

        }
        else
        {
            msg.Text = "Please Select An Image";
        }
    }
}