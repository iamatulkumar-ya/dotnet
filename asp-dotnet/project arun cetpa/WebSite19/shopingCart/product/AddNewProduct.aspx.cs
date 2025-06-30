using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class shopingCart_admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label7.Text = "";

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string category = null;
        string productimage = null;
        
        if (RadioButton1.Checked)

            category = RadioButton1.Text;
         if (RadioButton2.Checked)
            category = RadioButton2.Text;
         if (RadioButton3.Checked)
             category = RadioButton3.Text;
         if (RadioButton4.Checked)
             category = RadioButton4.Text;
         if (RadioButton5.Checked)
             category = RadioButton5.Text;
         if (FileUpload1.HasFile)

         {
            string p = "~/shopingCart/images/" + FileUpload1.FileName;
             FileUpload1.SaveAs(Page.MapPath(p));
             SqlDataSource1.InsertParameters["category"].DefaultValue = category;
             SqlDataSource1.InsertParameters["productimage"].DefaultValue=p;
             int g=SqlDataSource1.Insert();
             if(g!=0)
                 Label7.Text = "Data inserted";
            
             
             
         
             

         }
         else
         {
             Label7.Text="Plz Upload an image";
         }
         TextBox3.Text="";
            TextBox2.Text="";
        TextBox1.Text="";
        TextBox4.Text="";
        RadioButton1.Checked=false;
        RadioButton2.Checked=false;
        RadioButton3.Checked=false;
        RadioButton4.Checked=false;
        
           
       
        
            
        

        
    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
}