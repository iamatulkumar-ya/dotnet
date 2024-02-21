using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.IO;
public partial class Default2 : System.Web.UI.Page
{
    string imgpath;
    string gender;
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        imgmsg.Text = "";
        Label18.Text = "";
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
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
     
        if (RadioButton1.Checked)
            gender = RadioButton1.Text;
        if (RadioButton2.Checked)
            gender = RadioButton2.Text;
        if (RadioButton3.Checked)
            gender = RadioButton3.Text;

        if(FileUpload1.HasFile)
        {
            string ex = Path.GetExtension(FileUpload1.FileName);
            if (ex == ".jpg" || ex == ".jpeg")
            {
                imgpath = "~/images/Employee_images/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Page.MapPath(imgpath));
                imgmsg.Text = "File uploaded";
                empimgshow.ImageUrl = imgpath;
            }
            else
            {
                imgmsg.Text = "please select .jpeg or .jpg file only";
            }

        }
        else
        {
            imgmsg.Text = "please select a file";
        }

        SqlDataSource1.InsertParameters["egender"].DefaultValue = gender;
        SqlDataSource1.InsertParameters["eimage"].DefaultValue = imgpath;
        int g = SqlDataSource1.Insert();
        if (g != 0)
        {
            Response.Redirect("~/empsr.aspx");
        }
        else
            Label18.Text = "Something went wrong";

        //XmlDocument xd = new XmlDocument();
        //xd.Load(Server.MapPath("~/Data/Empinfo.xml"));
        //XmlElement parent = xd.CreateElement("Employeedetails");
        
        //XmlElement empname = xd.CreateElement("empname");
        //empname.InnerText = empnamebox.Text;

        //XmlElement empimage = xd.CreateElement("empimage");
        //if(FileUpload1.HasFile)
        //{
        //    string ex=Path.GetExtension(FileUpload1.FileName);
        //    if(ex==".jpg"|| ex==".jpeg")
        //    {
        //        imgpath="~/images/Employee_images/"+FileUpload1.FileName;
        //        FileUpload1.SaveAs(Page.MapPath(imgpath));
        //        imgmsg.Text="File uploaded";
        //        empimgshow.ImageUrl = imgpath;
        //    }
        //    else
        //    {
        //        imgmsg.Text="please select .jpeg or .jpg file only";
        //    }
            
        //}
        //else
        //{
        //    imgmsg.Text="please select a file";
        //}
        //empimage.InnerText = imgpath;

        //XmlElement empgender = xd.CreateElement("empgender");
        //if(RadioButton1.Checked)
        //{
        //    gender = RadioButton1.Text;
        //}
        
        //if(RadioButton2.Checked)
        //{
        //    gender = RadioButton2.Text;
        //}
        //if(RadioButton3.Checked)
        //{
        //    gender = RadioButton3.Text;
        //}
        //empgender.InnerText = gender;

        //XmlElement empdob = xd.CreateElement("empdob");
        //empdob.InnerText = empdobbox.Text;

        //XmlElement empemail = xd.CreateElement("empemail");
        //empemail.InnerText = empemailbox.Text;

        //XmlElement empaddress = xd.CreateElement("empaddress");
        //empaddress.InnerText = empaddressbox.Text;

        //XmlElement empcontactnumber = xd.CreateElement("empcontactnumber");
        //empcontactnumber.InnerText = empcontactnumberbox.Text;

        //XmlElement empstate = xd.CreateElement("empstate");
        //empstate.InnerText = empstatebox.Text;

        //XmlElement empcity = xd.CreateElement("empcity");
        //empcity.InnerText = empcitybox.Text;

        //XmlElement emppincode = xd.CreateElement("emppincode");
        //emppincode.InnerText = emppincodebox.Text;

        //XmlElement empid = xd.CreateElement("empid");
        //empid.InnerText = empidbox.Text;

        //XmlElement emppassword = xd.CreateElement("emppassword");
        //emppassword.InnerText = emppasswordbox.Text;

        //XmlElement empkey = xd.CreateElement("empkey");
        //empkey.InnerText = empkeybox.Text;

        //XmlElement empdesignation = xd.CreateElement("empdesignation");
        //empdesignation.InnerText = empdesignationbox.Text;

        //XmlElement empjoining = xd.CreateElement("empjoining");
        //empjoining.InnerText = empjoiningbox.Text;

        //parent.AppendChild(empname);
        //parent.AppendChild(empimage);
        //parent.AppendChild(empgender);
        //parent.AppendChild(empdob);
        //parent.AppendChild(empemail);
        //parent.AppendChild(empaddress);
        //parent.AppendChild(empcontactnumber);
        //parent.AppendChild(empstate);
        //parent.AppendChild(empcity);
        //parent.AppendChild(emppincode);
        //parent.AppendChild(empid);
        //parent.AppendChild(emppassword);
        //parent.AppendChild(empkey);
        //parent.AppendChild(empdesignation);
        //parent.AppendChild(empjoining);

        //xd.DocumentElement.AppendChild(parent);
        //xd.Save(Server.MapPath("~/Data/Empinfo.xml"));

        //empnamebox.Text = "";
        //emppasswordbox.Text = "";
        //emppincodebox.Text = "";
        //empstatebox.Text = "";
        //empcitybox.Text = "";
        //empaddressbox.Text = "";
        //empcontactnumberbox.Text = "";
        //empdobbox.Text = "";
        //empdesignationbox.Text = "";
        //empemailbox.Text = "";
        //RadioButton1.Checked = false;
        //RadioButton2.Checked = false;
        //RadioButton3.Checked = false;
        

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["userid"] = null;
        Response.Redirect("~/dedication.aspx");
    }
   
}