using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class createnewtable : System.Web.UI.Page
{
    string con_string = "data source=asus\\babu;integrated security=true";
    public void selectdb()
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(con_string);
            SqlCommand cmd = new SqlCommand("sp_databases", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            //GridView1.DataSource = rd;
            //GridView1.DataBind();

            DropDownList1.DataSource = rd;
            DropDownList1.DataTextField = "DATABASE_NAME";
            //DropDownList1.DataValueField = "DATABASE_NAME";
            DropDownList1.DataBind();
            con.Close();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        selectdb();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)     // Shows DataBase Name
    {
        SqlConnection con = new SqlConnection(con_string);


        con.Open();
        con.ChangeDatabase(DropDownList1.SelectedItem.Text);
        string qry = "select *from sys.tables";
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataReader rd = cmd.ExecuteReader();
        DropDownList2.DataSource = rd;
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataBind();
        con.Close();

    }
    protected void cdb_Click(object sender, EventArgs e)
    {
        ListItem y = DropDownList2.Items.FindByText(TextBox1.Text);
        if(DropDownList1.SelectedIndex=true)
        if (y != null)
        {
            msg.Text = "Sorry.....Table Already Existed";
        }
        else
        {
            SqlConnection con = new SqlConnection(con_string);
            string qry = "Create Database" + TextBox1.Text;
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            int g = cmd.ExecuteNonQuery();
            con.Close();
            if (g != 0)
            {
                msg.Text = "DataBase created";
            }
        }
    }
}