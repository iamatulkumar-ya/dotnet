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
    protected void Page_Load(object sender, EventArgs e)
    {
        msgin.Text = string.Empty;
        passmsg.Text = "";
        keymsg.Text = "";
        
        useridbox.Enabled = true;
        if (Session["show"] != null)
        {
            name.Visible = true;
            hello.Visible = true;
            name.Text = Session["show"].ToString();

        }
        else
        {
            hello.Visible = false;
            name.Visible = false;
        }
        
       
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);

        //string q = "select *from user_details where user_id=@uid and password=@upass and ukey=@ukey";
        //SqlCommand cmd = new SqlCommand(q, con);
        //cmd.Parameters.AddWithValue("@uid", useridbox.Text);
        //cmd.Parameters.AddWithValue("@upass", userpasswordbox.Text);
        //cmd.Parameters.AddWithValue("@ukey", userkeybox.Text);
        //con.Open();
        //SqlDataReader rd = cmd.ExecuteReader();
        //if (rd.HasRows)
        //{
        //    while (rd.Read())
        //    {


        //        Response.Cookies["uname"].Value = rd[1].ToString() + rd[2].ToString();
        //        Session["userid"] = useridbox.Text;
        //        Response.Redirect("~/userhome.aspx");
        //    }

        //}
        //else
        //{
        //    msgin.Text = "credential information doesn't matched...... Please Try again";
        //    useridbox.Text = "";
        //    userkeybox.Text = "";
        //    userpasswordbox.Text = "";

        //}



        if (userpasswordbox.Text == Request.Cookies["upass"].Value.ToString() && userkeybox.Text == Request.Cookies["ukey"].Value.ToString())
        {
            Response.Cookies["uname"].Value = name.Text;
            Session["userid"] = useridbox.Text;
            Response.Redirect("~/userhome.aspx");
        }
        else if (userpasswordbox.Text == Request.Cookies["upass"].Value.ToString())
        {
            keymsg.Text = "Entered Key is incorrect";
            userkeybox.Text = "";
            
        }
        else if (userkeybox.Text == Request.Cookies["ukey"].Value.ToString())
        {
            passmsg.Text = "Entered Password is incorrect";
           userpasswordbox.Text = "";
           userkeybox.Text = "";
        }
        else
        {
            keymsg.Text = "Entered Key is incorrect";
            passmsg.Text = "Entered Password is incorrect";
            userpasswordbox.Text = "";
            userkeybox.Text = "";
        }
            
        
    }

    protected void useridbox_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);

        string q = "select *from user_details where user_id=@uid";
        SqlCommand cmd = new SqlCommand(q, con);
        cmd.Parameters.AddWithValue("@uid", useridbox.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                useridbox.Enabled = false;
                hello.Visible = true;
                name.Visible = true;
                name.Text = rd[1].ToString() + rd[2].ToString();
                Session["show"] = name.Text.ToString();
                Response.Cookies["upass"].Value = rd[8].ToString();
                Response.Cookies["ukey"].Value = rd[9].ToString();
            }
        }
        else
        {
            msgin.Text = "User id is incorrect";
            useridbox.Text = "";
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["show"] = null;
        Response.Redirect("~/usersignin.aspx");
    }
}
