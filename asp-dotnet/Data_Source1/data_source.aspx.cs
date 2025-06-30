using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;     // used for datarows.....datasets.....datasource

public partial class data_source : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        idmsg.Text = "";
        imgmsg.Text = "";
        msg.Text = "";
        Image1.Visible = false;
        update.Enabled = false;
    }

    protected void insert_Click(object sender, EventArgs e)
    {
        string gender = null;
        string laguage = null;
        string img_path = null;

        if (RadioButton1.Checked)
        {
            gender = RadioButton1.Text;
        }
        else if (RadioButton2.Checked)
        {
            gender = RadioButton2.Text;
        }
        else
        {
            gender = RadioButton3.Text;
        }


        SqlDataSource1.InsertParameters["gender"].DefaultValue = gender;         // passing value of gender

        if (CheckBox1.Checked)
        {
            laguage = CheckBox1.Text;
        }
        if (CheckBox2.Checked)
        {
            laguage += "," + CheckBox2.Text;
        }
        if (CheckBox3.Checked)
        {
            laguage += "," + CheckBox3.Text;
        }
        if (CheckBox4.Checked)
        {
            laguage += "," + CheckBox4.Text;
        }

        SqlDataSource1.InsertParameters["language"].DefaultValue = laguage;              // passing value of language

        if (FileUpload1.HasFile)
        {
            string ex = Path.GetExtension(FileUpload1.FileName);
            if (ex == ".jpeg" || ex == ".jpg")
            {
                img_path = "~/pics/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(img_path));
                imgmsg.Text = "(File Successfuly Stored)";
                SqlDataSource1.InsertParameters["img_path"].DefaultValue = img_path;                  // passing path of image
            }
            else
            {
                imgmsg.Text = "(Select Only '.jpeg' and '.jpg' image)";
            }
        }
        else
        {
            imgmsg.Text = "(Please Select an image)";
        }

        int g = SqlDataSource1.Insert();
        if (g != 0)
            msg.Text = "Data Successfuly Inserted";


        idbox.Text = "";
        namebox.Text = "";
        citybox.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;


    }
    protected void idbox_TextChanged(object sender, EventArgs e)
    {
        DataSourceSelectArguments x = new DataSourceSelectArguments("id");
        DataView dv = (DataView)SqlDataSource2.Select(x);
        DataTable dt = dv.Table;
        if (dt.Rows.Count > 0)
        {
            idmsg.Text = "id already existed!";
            idbox.Text = "";

        }

    }
    protected void show_Click(object sender, EventArgs e)
    {
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
        Image1.ImageUrl = "";

        string gender = null;
        string language = null;


        DataSourceSelectArguments x = new DataSourceSelectArguments("id"); // DataSourceSelectArguments takes "column" name which is write in where clause
        DataView dv = (DataView)SqlDataSource1.Select(x);
        DataTable dt = dv.Table;
        if (dt.Rows.Count > 0)
        {
            Image1.Visible = true;
            idbox.Enabled = false;


            foreach (DataRow dr in dt.Rows)
            {
                idbox.Text = dr[0].ToString();
                namebox.Text = dr[1].ToString();
                citybox.Text = dr[2].ToString();
                gender = dr[3].ToString();
                language = dr[4].ToString();
                Image1.ImageUrl = dr[5].ToString();
            }

            // for corresponding radio buttons

            if (RadioButton1.Text.Equals(gender.Trim()))
            {
                RadioButton1.Checked = true;
            }
            else if (RadioButton2.Text == gender.Trim())
            {
                RadioButton2.Checked = true;
            }
            else
                RadioButton3.Checked = true;

            // for corresponding checkboxes

            string[] xx = language.Split(',');

            foreach (string y in xx)
            {
                if (CheckBox1.Text == y.Trim())
                {
                    CheckBox1.Checked = true;
                }
                if (CheckBox2.Text == y.Trim())
                {
                    CheckBox2.Checked = true;
                }
                if (CheckBox3.Text == y.Trim())
                {
                    CheckBox3.Checked = true;
                }
                if (CheckBox4.Text == y.Trim())
                {
                    CheckBox4.Checked = true;
                }
            }




            msg.Text = "Your Data is Here";
        }
        else
        {
            msg.Text = "Sorry....No Record Found";
            idbox.Enabled = true;
            idbox.Text = "";
            namebox.Text = "";
            citybox.Text = "";
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
            RadioButton3.Checked = false;
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            Image1.ImageUrl = "";
        }
        enteridbox.Text = "";
        update.Enabled = true;
        insert.Enabled = false;
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        int g = SqlDataSource1.Delete();
        if (g != 0)
            msg.Text = "Data Successfuly Deleted";
        else
            msg.Text = "Entered id is Wrong";
        enteridbox.Text = string.Empty;

    }
    protected void update_Click(object sender, EventArgs e)
    {
        string gender = null;
        string language = null;
        string img_path = null;

        if (RadioButton1.Checked)
        {
            gender = RadioButton1.Text;
        }
        else if (RadioButton2.Checked)
        {
            gender = RadioButton2.Text;
        }
        else
        {
            gender = RadioButton3.Text;
        }

        SqlDataSource1.UpdateParameters["gender"].DefaultValue = gender;

        if (CheckBox1.Checked)
        {
            language = CheckBox1.Text;
        }
        if (CheckBox2.Checked)
        {
            language += "," + CheckBox2.Text;
        }
        if (CheckBox3.Checked)
        {
            language += "," + CheckBox3.Text;
        }
        if (CheckBox4.Checked)
        {
            language += "," + CheckBox4.Text;
        }

        SqlDataSource1.UpdateParameters["language"].DefaultValue = language;

        img_path = Image1.ImageUrl;
        FileInfo fi = new FileInfo(MapPath(img_path));

        if(FileUpload1.HasFile)
        {
            string ex=Path.GetExtension(FileUpload1.FileName);

            if(ex==".jpeg" || ex== ".jpg")
            {
           
            fi.Delete();

            img_path = "~/pics/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(img_path));
            Image1.ImageUrl = img_path;
            imgmsg.Text = "New File Successfuly Uploaded";
            SqlDataSource1.UpdateParameters["img_path"].DefaultValue = img_path;
            }
            else
            {
                imgmsg.Text = "(Select Only '.jpeg' and '.jpg' image)";
            }
        }
        else
        {
            SqlDataSource1.UpdateParameters["img_path"].DefaultValue = img_path;
           
        }

        int g = SqlDataSource1.Update();
        if(g!=0)
        {
            msg.Text = "Data Successfuly Updated";
        }
        idbox.Enabled = false;
        idbox.Text = "";
        namebox.Text = "";
        citybox.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        CheckBox1.Checked = false;
        CheckBox2.Checked= false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;
        insert.Enabled = true;
        update.Enabled = false;
       
    }
}