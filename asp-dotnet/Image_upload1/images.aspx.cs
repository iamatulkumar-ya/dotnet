using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;                                

public partial class images : System.Web.UI.Page
{
      
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.Visible = false;
        msg.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        if(FileUpload1.HasFile)
        {
            string ex = Path.GetExtension(FileUpload1.FileName);
            if(ex==".jpg" || ex==".jpeg")
            {
                Image1.Visible = true;
                string p = "~/image/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Page.MapPath(p));
                Image1.ImageUrl = p;
                msg.Text="Yor Selected File is Here";
            }
            else { msg.Text = "Please Select Only '.jpeg/.jpg' Files "; }
        }
        else{msg.Text="Please select a file";}
    }
}