using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addsuplier : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["success"] == "all correct")
        {
            Label10.Visible = true;
        }
        else
            Label10.Visible = false;
    }

    protected void logoutbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/login.aspx");
    }
    protected void contactusbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/contactus.aspx");
    }
    protected void addsuplierbtn_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/addsuplier.aspx");

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string s = DropDownList1.SelectedItem.Value.Trim();
        if (s == "-select state-")
            statebox.Text = "";
        else
            statebox.Text = s;
    }
    protected void submitbtn_Click(object sender, EventArgs e)
    {
        string sup_name = snamebox.Text.Trim();
        string c_add = caddressbox.Text.Trim();
        string url = urlbox.Text.ToLower().Trim();
        string email = emailbox.Text.ToLower().Trim();
        string p_number = TextBox10.Text.ToString() + contactbox.Text.ToString();
        string s_name = statebox.Text;
        string pass = passwordbox.Text.ToString();

        if (sup_name != null && c_add != null && email != null && p_number != null && s_name != null && pass != null)
        {
            Session["success"] = "all_correct";
            Response.Redirect("~/addsuplier.aspx");
        }
           
        else
        {
            Response.Redirect("~/homepage.aspx");
            Session["success"] = null;

        }
           

    }
}