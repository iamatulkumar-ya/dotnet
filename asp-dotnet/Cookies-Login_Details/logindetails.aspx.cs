using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class logindetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string con_string = "data source=asus\\babu;initial catalog=aspdb;integrated security=true";
        //string qry =string.Format("select *from signin where email={0} AND password={1}",TextBox1.Text.ToString(),TextBox2.Text.ToString());

        //SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        //DataTable dt = new DataTable();
        //ad.Fill(dt);
        
        //if(dt.Rows.Count>0)
        //{
        //    foreach(DataRow dr in dt.Rows)
        //    {
        //        Session["username"] = dr[0].ToString();
        //        Session["password"] = dr[1].ToString();
        //        Response.Redirect("welcome.aspx");
                
        //    }
        //}
        //else
        //{
        //    Label3.Text = "try again";
        //}

        string qry = "select *from signin where email=@email and password=@password";
        SqlConnection con = new SqlConnection(con_string);
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@email", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", TextBox2.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if(rd.HasRows)
        {
            while(rd.Read())
            {
                Session["email"] = rd[0].ToString();
                //Response.Cookies["pass"].Value = rd[1].ToString();
                Session["pass"] = rd[1].ToString();
                Label3.Text = "welcome admin";
                Response.Redirect("welcome.aspx");
            }

        }
        else
        {
            Label3.Text = "try again";
        }
    }
}