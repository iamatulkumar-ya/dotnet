using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        adminloginp.Visible = false;
        adminkeyp.Visible = true;

        Panel1.Visible = false;
        Panel2.Visible = false;
        if (Session["userid"] != null)
        {
            Panel2.Visible = true;
            Label2.Text = Request.Cookies["uname"].Value.ToString();

        }
        else
        {
            Panel1.Visible = true;
        }
        adminmsg.Text = "";
        keymsg.Text = "";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)     // signin button
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        string qry = "Select *from admin where admin_id=@id AND admin_password=@password AND admin_key=@akey";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", adminidbox.Text);
        cmd.Parameters.AddWithValue("@password", adminpasswordbox.Text);
        cmd.Parameters.AddWithValue("@akey", adminkeybox.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if(rd.HasRows)
        {
            while (rd.Read())
            {
                Response.Cookies["uname"].Value = rd[0].ToString();
                Session["userid"] = rd[1].ToString();
                Session["myhome"] = "adminmode";
                Response.Redirect("~/myhome.aspx");             
               
            }
        }
        else
        {
            adminmsg.Text = "Your Credential informations are incorrect";
            adminidbox.Text = "";
            adminkeybox.Text = "";
            adminpasswordbox.Text = "";
            adminloginp.Visible = true;

        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["userid"] = null;
        Response.Redirect("~/dedication.aspx");
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if(akeybox.Text.Equals("7068161717"))
        {
            adminkeyp.Visible = false;
            adminloginp.Visible = true;

        }
        else
        {
            keymsg.Text = "Sorry....incorrect key";
            akeybox.Text = "";
        }
    }
}