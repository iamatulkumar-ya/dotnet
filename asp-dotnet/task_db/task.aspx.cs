using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class task : System.Web.UI.Page
{
    string con_string;
    string y;
    string z;
    string p;
    string a;
  
    

    public task()
    {
        con_string = "data source=asus\\babu; initial catalog=aspdb;integrated security=true";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        imgmsg.Text = "";
        msg.Text = "";
        Image1.Visible = false;
        update.Enabled = false;
       
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        
       
        SqlConnection con = new SqlConnection(con_string);
        string qry = "insert into task values(@id,@name,@city,@gender,@language,@imgpath)";
        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.Parameters.AddWithValue("@id", int.Parse(idbox.Text));
        cmd.Parameters.AddWithValue("@name", namebox.Text);
        cmd.Parameters.AddWithValue("@city", citybox.Text);

        if (RadioButton1.Checked)
        {
            y = RadioButton1.Text;
        }
        else
        {
            if (RadioButton2.Checked)
            {
                y = RadioButton2.Text;
            }
            else
            {
                y = RadioButton3.Text;
            }
        }

        cmd.Parameters.AddWithValue("@gender", y);

        if (CheckBox1.Checked)
        {
            z = CheckBox1.Text;
        }
        if (CheckBox2.Checked)
        {
            z += "," + CheckBox2.Text;
        }
        if (CheckBox3.Checked)
        {
            z += "," + CheckBox3.Text;

        }
        if (CheckBox4.Checked)
        {
            z += "," + CheckBox4.Text;
        }
        cmd.Parameters.AddWithValue("@language", z);

        if (FileUpload1.HasFile)
        {
            string ex = Path.GetExtension(FileUpload1.FileName);
            if (ex == ".jpeg" || ex == ".jpg")
            {
                p = "~/images/" + FileUpload1.FileName;


                FileUpload1.SaveAs(Page.MapPath(p));
                imgmsg.Text = "File Uploaded";
            }
            else
            {
                imgmsg.Text = " PLease Select only .jpeg or .jpg format of file";
            }
        }

        cmd.Parameters.AddWithValue("@imgpath", p);

        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        if(g!=0)
        {
            msg.Text = "Data inserted";
        }

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
    protected void show_Click(object sender, EventArgs e)
    {
        Image1.Visible = true;
        update.Enabled = true;
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;

        RadioButton1.Enabled = true;
        RadioButton2.Enabled = true;
        RadioButton3.Enabled = true;
        CheckBox1.Enabled = true;
        CheckBox2.Enabled = true;
        CheckBox3.Enabled = true;
        CheckBox4.Enabled= true;

        SqlConnection con = new SqlConnection(con_string);        
        string qry = "Select *from task where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", int.Parse(enteridbox.Text));

        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if(rd.HasRows)
        {
            while (rd.Read())
            {
                idbox.Text = rd[0].ToString();
                idbox.Enabled = false;
                namebox.Text = rd[1].ToString();
                citybox.Text = rd[2].ToString();
                
                string x = rd[3].ToString();

                if (x.Trim() == RadioButton1.Text)
                {
                    RadioButton1.Checked = true;
                    
                }

                else if (x.Trim() == RadioButton2.Text)
                {
                    RadioButton2.Checked = true;
                    
                }
                else 
                {
                    RadioButton3.Checked = true;
                   
                }


                string y = rd[4].ToString();
                string[] xy = y.Split(',');
                foreach (string u in xy)
                {
                    if (u.Trim() == CheckBox1.Text)
                    {
                        CheckBox1.Checked = true;
                        
                    }
                    if (u.Trim() == CheckBox2.Text)
                    {
                        CheckBox2.Checked = true;
                        
                    }
                    if (u.Trim() == CheckBox3.Text)
                    {
                        CheckBox3.Checked = true;
                        
                    }
                    if (u.Trim() == CheckBox4.Text)
                    {
                        CheckBox4.Checked = true;
                        
                    }
                }

               z = rd[5].ToString();
                Image1.ImageUrl = z;
            }
            msg.Text = "Your Data is Here";
          }
        else
        {
            msg.Text = "No id Founds";
        }
        enteridbox.Text = "";
        con.Close();
        insert.Enabled = false;
}


    protected void delete_Click(object sender, EventArgs e)
    {
        idbox.Text = "";
        namebox.Text = "";
        citybox.Text = "";
        Image1.ImageUrl = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
        CheckBox4.Checked = false;

        RadioButton1.Enabled = true;
        RadioButton2.Enabled = true;
        RadioButton3.Enabled = true;
        CheckBox1.Enabled = true;
        CheckBox2.Enabled = true;
        CheckBox3.Enabled = true;
        CheckBox4.Enabled = true;

        SqlConnection con = new SqlConnection(con_string);
        string qry = "Delete task where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        int a;     
        bool t = int.TryParse(enteridbox.Text, out a);
        if (t)
        {
            cmd.Parameters.AddWithValue("@id", enteridbox.Text);
        }
        else
        {
            msg.Text = "Please enter id";
        }
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        if(g!=0)
        {
            msg.Text = "Data Deleted";
        }
        else
        {
            msg.Text = "No iD fOUNDS";
        }
        enteridbox.Text = "";
    }
    protected void update_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(con_string);
        string qry = "Update task set name=@name,city=@city,gender=@gender,language=@language,img_path=@imgpath where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);

       
        cmd.Parameters.AddWithValue("@id", int.Parse(idbox.Text));
        cmd.Parameters.AddWithValue("@name", namebox.Text);
        cmd.Parameters.AddWithValue("@city", citybox.Text);

        string x;
        if(RadioButton1.Checked)
        {
            x = RadioButton1.Text;
        }
        else if(RadioButton2.Checked)
        {
            x = RadioButton2.Text;
        }
        else
        {
            x = RadioButton3.Text;
        }
        cmd.Parameters.AddWithValue("@gender", x);


        
        if(CheckBox1.Checked)
        {
            a = CheckBox1.Text;
        }
        if(CheckBox2.Checked)
        {
            a += "," + CheckBox2.Text;
        }
        if(CheckBox3.Checked)
        {
            a += "," + CheckBox3.Text;
        }
        if(CheckBox4.Checked)
        {
            a += "," + CheckBox4.Text;
        }

        cmd.Parameters.AddWithValue("@language", a);

        string zx = Image1.ImageUrl;
        FileInfo fi = new FileInfo(MapPath(zx));
            if (FileUpload1.HasFile)
            {
                fi.Delete();
                
                string ex = Path.GetExtension(FileUpload1.FileName);

                   if (ex == ".jpeg" || ex == ".jpg" || ex == ".png" || ex == ".bmp")
                     {

                    zx = "~/images/" + FileUpload1.FileName;               // create virtual path

                    FileUpload1.SaveAs(Page.MapPath(zx));          // converts virtual path into physical path
                    imgmsg.Text = "New file Uploaded";
                      }
                  else
                     {
                    imgmsg.Text = "Please select only image file";
                      }
             }
               
            
            else 
                {
                    zx=Image1.ImageUrl;
               }
        
        cmd.Parameters.AddWithValue("@imgpath", zx);

        con.Open();
        int g = cmd.ExecuteNonQuery();

        if(g!=0)
        {
            msg.Text = "Data updated";
        }
        con.Close();
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
        insert.Enabled = true;

    }
}



        