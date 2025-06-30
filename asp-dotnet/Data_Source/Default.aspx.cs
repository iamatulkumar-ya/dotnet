using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender = null;
        string language = null;
        if(CheckBox1.Checked)
        {
            language = CheckBox1.Text;
        }
        if (CheckBox2.Checked)
        {
            language +=","+ CheckBox2.Text;
        }
        if (CheckBox3.Checked)
        {
            language += "," + CheckBox3.Text;
        }
        if(RadioButton1.Checked)
        {
            gender = RadioButton1.Text;
        }
        else if (RadioButton2.Checked)
        {
            gender = RadioButton2.Text;
        }
        SqlDataSource1.InsertParameters["gender"].DefaultValue = gender;
        SqlDataSource1.InsertParameters["language"].DefaultValue = language;
        int g = SqlDataSource1.Insert();
        if (g != 0)
            Label1.Text = "data inserted";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataSourceSelectArguments x=new DataSourceSelectArguments("id");
        DataView dv=(DataView)SqlDataSource1.Select(x);
        DataTable dt = dv.Table;
        string gender = null;
        string language = null;
        if (dt.Rows.Count > 0)
        {
            TextBox1.Enabled = false;
            Button1.Enabled = false;
            Button2.Enabled = true;
            foreach (DataRow dr in dt.Rows)
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
                gender = dr[3].ToString();
                language = dr[4].ToString();


            }
            if(RadioButton1.Text==gender.Trim())
            {
                RadioButton1.Checked = true;
            }
            else if (RadioButton2.Text == gender.Trim())
            {
                RadioButton2.Checked = true;
            }
            string[] y = language.Split(',');
            foreach(string u in y)
            {
                if(CheckBox1.Text==u.Trim())
                {
                    CheckBox1.Checked = true;
                }
                if (CheckBox2.Text == u.Trim())
                {
                    CheckBox2.Checked = true;
                }
                if (CheckBox3.Text == u.Trim())
                {
                    CheckBox3.Checked = true;
                }
            }
        }
        else
        {
            Label1.Text = "Wrong id";
        }
        TextBox4.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string gender = null;
        string language = null;
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
        if (RadioButton1.Checked)
        {
            gender = RadioButton1.Text;
        }
        else if (RadioButton2.Checked)
        {
            gender = RadioButton2.Text;
        }

        SqlDataSource1.UpdateParameters["gender"].DefaultValue = gender;
        SqlDataSource1.UpdateParameters["language"].DefaultValue = language;
        int g = SqlDataSource1.Update();
        if (g != 0)
            Label1.Text = "data updated";
        TextBox1.Enabled = true;
        Button1.Enabled = true;
        Button2.Enabled = false;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        CheckBox1.Checked = false;
        CheckBox2.Checked = false;
        CheckBox3.Checked = false;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int g = SqlDataSource1.Delete();
        if (g != 0)
            Label1.Text = "data deleted";
        else
            Label1.Text = "Wrong id";
        TextBox4.Text = "";
    }
}