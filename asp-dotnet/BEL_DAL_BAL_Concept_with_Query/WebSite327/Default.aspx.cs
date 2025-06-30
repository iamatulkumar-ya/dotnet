using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        BALDataBaseWork ob = new BALDataBaseWork();
        BELDataBaseWork bel = new BELDataBaseWork();
        bel.ID = int.Parse(TextBox1.Text);
        bel.NAME = TextBox2.Text;
        bel.PASSWORD = TextBox3.Text;
       int g= ob.insertdata(bel);
       if (g != 0)
           Label1.Text = "data inserted";
       TextBox3.Text = "";
       TextBox2.Text = "";
       TextBox1.Text = "";

       

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        BALDataBaseWork bal = new BALDataBaseWork();
        BELDataBaseWork bel = new BELDataBaseWork();
        bel.ID = int.Parse(TextBox4.Text);
        DataTable dt = bal.selectData(bel);
        if(dt.Rows.Count>0)
        {
            Button1.Enabled = false;
            Button2.Enabled = true;
            TextBox1.Enabled = false;

            foreach(DataRow dr in dt.Rows)
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                TextBox3.Text = dr[2].ToString();
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
        BALDataBaseWork bal = new BALDataBaseWork();
        BELDataBaseWork bel = new BELDataBaseWork();
        bel.ID = int.Parse(TextBox1.Text);
        bel.NAME = TextBox2.Text;
        bel.PASSWORD = TextBox3.Text;
        int g = bal.updatetdata(bel);
        if (g != 0)
            Label1.Text = "data updated";
        TextBox1.Enabled = true;
        Button1.Enabled = true;
        Button2.Enabled = false;
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        BALDataBaseWork bal = new BALDataBaseWork();
        BELDataBaseWork bel = new BELDataBaseWork();
        bel.ID = int.Parse(TextBox4.Text);
        int g = bal.deletedata(bel);
        if (g != 0)
            Label1.Text = "Data deleted";
        else
            Label1.Text = "Wrong id";
        TextBox4.Text = "";
    }
}