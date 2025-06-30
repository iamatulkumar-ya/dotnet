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
    int c;
    
    protected void Page_Load(object sender, EventArgs e)
    {
      
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string add = housenumberbox.Text + "," + streetbox.Text + "," + landmarkbox.Text + "," + ucitybox.Text + "-" + uzipcodebox.Text + "," + ustatebox.Text;
      
        SqlDataSource1.InsertParameters["address"].DefaultValue = add;

        int g = SqlDataSource1.Insert();
        if (g == 1)
        {
            Response.Cookies["userid"].Value = uidbox.Text;
            Response.Cookies["userpassword"].Value = upasswordbox.Text;
            Response.Cookies["userkey"].Value = ukeybox.Text;
            Response.Redirect("~/usersr.aspx");
        }
      
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        ustatebox.Text = DropDownList1.SelectedItem.Value.ToString();
        string qry = "Select State_no from citystate where State_name=@ustatebox";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.Parameters.AddWithValue("@ustatebox", ustatebox.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if(rd.HasRows)
        {
            while(rd.Read())
            {
                c = int.Parse(rd[0].ToString());
            }
        }

        string qry1 = "Select City_name from citystate where category =" + c.ToString()+"order by city_name";
        SqlDataAdapter ad1 = new SqlDataAdapter(qry1, ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        DataTable dt1 = new DataTable();
        ad1.Fill(dt1);
       
            DropDownList2.DataSource = dt1;
            DropDownList2.DataTextField = "City_name";
            DropDownList2.DataBind();
        
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        ucitybox.Text = DropDownList2.SelectedItem.Value.ToString();
    }
    protected void uidbox_TextChanged(object sender, EventArgs e)
    {
        string qry = "select *from user_details where user_id=@uid";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@uid", uidbox.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if(rd.HasRows)
        {
            exsistid.Text = "Sorry....userid already existed";
            uidbox.Text = "";
        }
        else
        {
            exsistid.Text = "";
        }
    }
   
}