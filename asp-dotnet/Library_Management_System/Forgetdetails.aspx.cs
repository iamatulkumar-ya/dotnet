using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label19.Text = "";
        msg.Text = "";
        //userpasswordbox.Text ="";
        //usernumberbox.Text = "";
        //userkeybox.Text = "";
       
    }
    protected void useridbox_TextChanged(object sender, EventArgs e)
    {
        string qry = "select *from user_details where user_id=@uid";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@uid", useridbox.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            Label19.Text = "";
            useridbox.Enabled = false;
        }
        else
        {
            Label19.Text = "User id doesn't matched with database";
            useridbox.Text = "";
            useridbox.Enabled = true;
        }
    }
    protected void go_Click(object sender, EventArgs e)
    {
        if (userkeybox.Text == string.Empty && usernumberbox.Text == string.Empty && userpasswordbox.Text == string.Empty) 
        {
               msg.Text = "Please Enter atleast one field below OR choose above option";
        }
        else
        {
            if (userkeybox.Text == string.Empty && userpasswordbox.Text == string.Empty)
            {
                msg.Text = "Sorry...This service is not available at this time";
                usernumberbox.Text = "";
                useridbox.Text = "";
                useridbox.Enabled = true;
            }
            else
            {
                if (userkeybox.Text != string.Empty)     // user have a key
                {
                    string q = "Select *from user_details where user_id=@uid AND ukey=@ukey";
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.Parameters.AddWithValue("@uid", useridbox.Text);
                    cmd.Parameters.AddWithValue("@ukey", userkeybox.Text);
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.HasRows)
                    {
                        while (rd.Read())
                        {
                            Response.Cookies["userid"].Value = rd[0].ToString();
                            Response.Cookies["uname"].Value = rd[1].ToString().Trim() + rd[2].ToString().Trim();
                            Response.Cookies["userpassword"].Value = rd[8].ToString();
                            Response.Cookies["userkey"].Value = rd[9].ToString();
                            Response.Redirect("~/retrievedetails.aspx");
                        }
                    }
                    else
                    {
                        msg.Text = "Sorry....Key Doesn't matched with Userid";
                        userkeybox.Text = "";
                    }
                    con.Close();
                }   // user have a key if closed

                else      // user have a password
                {
                    string q = "Select *from user_details where user_id=@uid AND password=@pass";
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.Parameters.AddWithValue("@uid", useridbox.Text);
                    cmd.Parameters.AddWithValue("@pass", userpasswordbox.Text);
                    con.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.HasRows)
                    {
                        while (rd.Read())
                        {
                            Response.Cookies["userid"].Value = rd[0].ToString();
                            Response.Cookies["uname"].Value = rd[1].ToString().Trim() + rd[2].ToString().Trim();
                            Response.Cookies["userpassword"].Value = rd[8].ToString();
                            Response.Cookies["userkey"].Value = rd[9].ToString();
                            Response.Redirect("~/retrievedetails.aspx");
                        }
                    }
                    else
                    {
                        msg.Text = "Sorry....Password Doesn't matched with Userid";
                    }
                    con.Close();

                } // user have a password else closed


            }

        }
    }
}
    
