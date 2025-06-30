using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    static string crd = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void getcordinates_Click(object sender, EventArgs e)
    {
        string actcrd = crd.Remove(crd.Length - 1);
        PolygonHotSpot p = new PolygonHotSpot();
        p.Coordinates = actcrd;
        p.NavigateUrl = "~/usersignin.aspx";
        p.HotSpotMode = HotSpotMode.Navigate;
        ImageMap2.HotSpots.Add(p);
        crd = null;
        
        
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        TextBox1.Text = e.X.ToString();
        TextBox2.Text = e.Y.ToString();
        crd += e.X.ToString() + "," + e.Y.ToString() + ",";
    }

    protected void getcordinates0_Click(object sender, EventArgs e)
    {
        if(DropDownList1.SelectedIndex.ToString().Equals("2"))
        {
            TextBox3.Text = "hello";
        }
        else
        {
        TextBox3.Text = DropDownList1.SelectedItem.Value.ToString();
        }
    }
    protected void firstinsert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        string qry = "insert into other values(@cid,@cname,@scid,@scname)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@cid", cid.Text);
        cmd.Parameters.AddWithValue("@cname", cname.Text);
        cmd.Parameters.AddWithValue("@scid", scid.Text);
        cmd.Parameters.AddWithValue("@scname", scname.Text);
        con.Open();
        int g = cmd.ExecuteNonQuery();
        if(g!=0)
        {
            Label1.Text = "data inserted";
            scid.Text = "";
            scname.Text = "";
            
            firstinsert.Enabled = false;
            cid.Enabled = false;
            cname.Enabled = false;
        }
        con.Close();
    }
    protected void secondinsert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        string qry = "insert into other values(@cid,@cname,@scid,@scname)";
        SqlCommand cmd = new SqlCommand(qry, con);
        string c = null;
        string n = null;
        cmd.Parameters.AddWithValue("@cid", c);
        cmd.Parameters.AddWithValue("@cname", n);
        cmd.Parameters.AddWithValue("@scid", scid.Text);
        cmd.Parameters.AddWithValue("@scname", scname.Text);
        con.Open();
        int g = cmd.ExecuteNonQuery();
        if (g != 0)
        {
            Label2.Text = "data inserted";
            scid.Text = "";
            scname.Text = "";
        }

    }
}



