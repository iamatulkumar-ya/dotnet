using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        slideimage.ImageUrl = "~/images/Slide0.png";
        aboutusp.Visible = false;
        onlineservicep.Visible = false;
        homeservicep.Visible = false;
        trustedgoodsp.Visible = false;
        easyreplacementp.Visible = false;
        feedbackp.Visible = false;
        developersteamp.Visible = false;
        staffloginp.Visible = false;
        staffloginp2.Visible = false;
        pinmsg.Text = string.Empty;
    

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
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["userid"] = null;
        Response.Redirect("~/dedication.aspx");
    }

    protected void aboutus_Click(object sender, EventArgs e)
    {
        imagetimerp.Visible = false;
        aboutusp.Visible = true;
    }
    protected void onlineservice_Click(object sender, EventArgs e)
    {
        imagetimerp.Visible = false;
        onlineservicep.Visible = true;
    }
    protected void homeservice_Click(object sender, EventArgs e)
    {
        imagetimerp.Visible = false;
        homeservicep.Visible = true;
    }
    protected void trustedgoods_Click(object sender, EventArgs e)
    {
        imagetimerp.Visible = false;
        trustedgoodsp.Visible = true;
    }
    protected void easyreplacement_Click(object sender, EventArgs e)
    {
        imagetimerp.Visible = false;
        easyreplacementp.Visible = true;
    }
    protected void feedback_Click(object sender, EventArgs e)
    {
        imagetimerp.Visible = false;
        feedbackp.Visible = true;
    }
    protected void developerteam_Click(object sender, EventArgs e)
    {
        imagetimerp.Visible = false;
        developersteamp.Visible = true;
    }
    protected void stafflogin_Click(object sender, EventArgs e)
    {
        staffmsg.Text = "";
        imagetimerp.Visible = false;
        staffloginp.Visible = true;
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        imagetimerp.Visible = false;
        if(staffpinbox1.Text.Equals("9026111881"))
        {
            staffloginp.Visible = false;
            staffloginp2.Visible = true;
        }
        else
        {
            pinmsg.Text = "Sorry...Entered Pin is Worng";
            staffloginp.Visible = true;
            staffpinbox1.Text = "";                                   
    
        }
    }
    protected void signin_Click(object sender, EventArgs e)         // staff signin
    {
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        string qry = "Select *from emp_details where eid=@id AND epassword=@password AND ekey=@ekey";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", staffidbox.Text);
        cmd.Parameters.AddWithValue("@password", staffpasswordbox.Text);
        cmd.Parameters.AddWithValue("@ekey", staffkeybox.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                Response.Cookies["uname"].Value = rd[0].ToString();
                Session["userid"] = rd[10].ToString();
                Session["myhome"] = "staffmode";
                Response.Redirect("~/myhome.aspx");

            }
        }
        else
        {
            staffmsg.Text = "Your Credential informations are incorrect";
            staffidbox.Text = "";
            staffkeybox.Text = "";
            staffpasswordbox.Text = "";
            staffloginp2.Visible = false;
            staffloginp.Visible = true;


        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        Random rn = new Random();
        int n = rn.Next(1, 8);
        if (n == 1)
            slideimage.ImageUrl = "~/images/Slide1.png";
        if (n == 2)
            slideimage.ImageUrl = "~/images/Slide2.png";
        if (n == 3)
            slideimage.ImageUrl = "~/images/Slide3.png";
        if (n == 4)
            slideimage.ImageUrl = "~/images/Slide4.png";
        if (n == 5)
            slideimage.ImageUrl = "~/images/Slide5.png";
        if (n == 6)
            slideimage.ImageUrl = "~/images/Slide6.png";
        if (n == 7)
            slideimage.ImageUrl = "~/images/Slide7.png";
     
    }
}