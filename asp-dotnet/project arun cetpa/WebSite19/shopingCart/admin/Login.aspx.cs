using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;




public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "";

    }
    
    
  
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.End();

    }
   

    protected void Button1_Click1(object sender, EventArgs e)
{

    SqlConnection con = new SqlConnection(@"Data Source=ARUN;Initial Catalog=shoppingcart;Integrated Security=True");
    SqlDataAdapter ad = new SqlDataAdapter("select count(*) from login where username='" + TextBox1.Text + "' and passward='" + TextBox2.Text + "'", con);
    DataTable dt = new DataTable();
    ad.Fill(dt);
    if (dt.Rows[0][0].ToString() == "1")
    {

        Response.Redirect("~/shopingCart/admin/home.aspx");

    }
    else
    {
        Label3.Text = "wrong input";
    }


}
}
