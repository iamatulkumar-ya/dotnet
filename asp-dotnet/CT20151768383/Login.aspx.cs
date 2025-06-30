using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        emsg.Visible = false;
        emailidbox.Text = "";
        passwordbox.Text = "";
    }
    protected void loginbtn_Click(object sender, EventArgs e)
    {
        string eid = emailidbox.Text;
        string pass = passwordbox.Text;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CT20151768383"].ConnectionString);
        string qry = "Select *from login where Email_id='" + eid + "' AND " + "password='" + pass + "'";
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
            Response.Redirect("~/homepage.aspx");
        else
        {
            emsg.Visible = true;
            emailidbox.BackColor = Color.Red;
            passwordbox.BackColor = Color.Red;
            emailidbox.Text = "";
            passwordbox.Text = "";
        }
        con.Close();
    }
}
