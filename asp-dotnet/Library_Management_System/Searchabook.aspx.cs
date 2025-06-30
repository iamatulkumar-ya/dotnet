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
        
        categorysbox.Text = "";
        subcategorysbox.Text = "";
        authornamebox.Text = "";
        resultp.Visible = true;
        authornamebox.Enabled = false;
        categorysbox.Enabled = false;
        subcategorysbox.Enabled = false;

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
        Response.Redirect("~/Searchabook.aspx");
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        

        if (authorcheck.Checked)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM [Book_details] WHERE ([Book_name] LIKE '%' + @Book_name + '%' AND [Author_name] LIKE '%' + @author_name + '%')";
            SqlDataSource1.SelectParameters["@Book_name"].DefaultValue = booknamebox.Text;
            SqlDataSource1.SelectParameters["@author_name"].DefaultValue = authornamebox.Text;

        }




        
        //if(authornamebox.Text==string.Empty && categorysbox.Text==string.Empty && subcategorysbox.Text==string.Empty)    // only book name is enterd
        //{     
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        //string qry = "Select *from Book_details where Book_name LIKE '%" + booknamebox.Text + "%'";
        //SqlCommand cmd = new SqlCommand(qry, con);
        //con.Open();
        //SqlDataReader rd = cmd.ExecuteReader();
        //if (rd.HasRows)
        //{
        //    resultp.Visible = true;

        //    GridView1.DataSource = rd;
        //     GridView1.DataBind();

        //}
        //else
        //{
        //    msg.Visible = true;
        //    resultp.Visible = true;

        //}
        
        //}
        //else if (categorysbox.Text == string.Empty && subcategorysbox.Text == string.Empty)    // author name is not empty
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        //    string qry = "Select *from Book_details where Book_name LIKE '%" + booknamebox.Text + "%' AND Author_name LIKE '%" + authornamebox.Text + "%' ";
        //    SqlCommand cmd = new SqlCommand(qry, con);
        //    con.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    if (rd.HasRows)
        //    {
        //        resultp.Visible = true;
        //        GridView1.DataSource = rd;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        msg.Visible = true;
        //        resultp.Visible = true;

        //    }
        //}
        //else if(authornamebox.Text==string.Empty && categorysbox.Text==string.Empty)  // sub_category is not empty
        //{
        //     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        //    string qry = "Select *from Book_details where Book_name LIKE '%" + booknamebox.Text + "%' AND Sub_Category LIKE '%" + subcategorysbox.Text + "%' ";
        //    SqlCommand cmd = new SqlCommand(qry, con);
        //    con.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    if (rd.HasRows)
        //    {
        //        resultp.Visible = true;
        //        GridView1.DataSource = rd;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        msg.Visible = true;
        //        resultp.Visible = true;

        //    }
        //}
        //else if (authornamebox.Text == string.Empty && subcategorysbox.Text == string.Empty)   // category is not empty
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        //    string qry = "Select *from Book_details where Book_name LIKE '%" + booknamebox.Text + "%' AND Category LIKE '%" + categorysbox.Text + "%' ";
        //    SqlCommand cmd = new SqlCommand(qry, con);
        //    con.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    if (rd.HasRows)
        //    {
        //        resultp.Visible = true;
        //        GridView1.DataSource = rd;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        msg.Visible = true;
        //        resultp.Visible = true;

        //    }
        //}
        //else if(authornamebox.Text == string.Empty)  // category and sub_category is not empty
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        //    string qry = "Select *from Book_details where Book_name LIKE '%" + booknamebox.Text + "%' AND Category LIKE '%" + categorysbox.Text + "%' AND Sub_Category LIKE '%" + subcategorysbox.Text + "%'";
        //    SqlCommand cmd = new SqlCommand(qry, con);
        //    con.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    if (rd.HasRows)
        //    {
        //        resultp.Visible = true;
        //        GridView1.DataSource = rd;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        msg.Visible = true;
        //        resultp.Visible = true;

        //    }
        //}
        //else if(subcategorysbox.Text == string.Empty) // author name and category is not empty
        //{
        //     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        //     string qry = "Select *from Book_details where Book_name LIKE '%" + booknamebox.Text + "%' AND Category LIKE '%" + categorysbox.Text + "%'  AND Author_name LIKE '%" + authornamebox.Text + "%' ";
        //    SqlCommand cmd = new SqlCommand(qry, con);
        //    con.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    if (rd.HasRows)
        //    {
        //        resultp.Visible = true;
        //        GridView1.DataSource = rd;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        msg.Visible = true;
        //        resultp.Visible = true;

        //    }
        //}
        //else     // author name and sub_category is not empty
        //{
        //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LMSConnectionString"].ConnectionString);
        //    string qry = "Select *from Book_details where Book_name LIKE '%" + booknamebox.Text + "%' AND Sub_Category LIKE '%" + subcategorysbox.Text + "%'  AND Author_name LIKE '%" + authornamebox.Text + "%' ";
        //    SqlCommand cmd = new SqlCommand(qry, con);
        //    con.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    if (rd.HasRows)
        //    {
        //        resultp.Visible = true;
        //        GridView1.DataSource = rd;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        msg.Visible = true;
        //        resultp.Visible = true;

        //    }
        //}
       
        
    }
  
    protected void authorcheck_CheckedChanged1(object sender, EventArgs e)
    {
        if(authorcheck.Checked)
        {
            authornamebox.Enabled = true;
           
        }
        else
        {
            authornamebox.Enabled = false;
        }
    }
    protected void categorycheck_CheckedChanged(object sender, EventArgs e)
    {
        if(categorycheck.Checked)
        {
            categorysbox.Enabled = true;
        }
        else
        {
            categorysbox.Enabled = false;
        }
    }
    protected void subcategorycheck_CheckedChanged(object sender, EventArgs e)
    {
        if(subcategorycheck.Checked)
        {
            subcategorysbox.Enabled = true;
        }
        else
        {
            subcategorysbox.Enabled = false;
        }
    }


    protected void buylbt_Click(object sender, EventArgs e)
    {

    }
    protected void issuelbt_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        LinkButton buy = (LinkButton)GridView1.FindControl("buylbt");
        LinkButton issue = (LinkButton)GridView1.FindControl("issuelbt");
        LinkButton booknamebtn = (LinkButton)GridView1.FindControl("booknamebutton");


        if(e.CommandName=="buy")
           Response.Redirect("~/buybook.aspx");
    
        if (e.CommandName == "issue")
            Response.Redirect("~/issuebook.aspx");

        if (e.CommandName == "bookname")
        {
            //Session["bookinfos"] = booknamebtn.Text.ToString();
            booknamebtn.Text = Request.QueryString["BOOK_NAME"];
            
            //Response.Redirect("~/bookdetails.aspx");
      
            
        }
    }
    protected void booknamebutton_Click(object sender, EventArgs e)
    {

    }
}