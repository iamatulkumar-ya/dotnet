using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Default3 : System.Web.UI.Page
{
    string con_string = "Data Source=asus\\babu;initial catalog=aspdb;integrated security=true";
    public void showData()
    {

        string qry = "select *from login";
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            showData();
        }

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        showData();
        GridView1.Rows[e.NewEditIndex].Cells[1].Enabled = false;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        showData();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txt1 = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txt2 = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txt3 = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        SqlConnection con = new SqlConnection(con_string);
        string qry = "update login set name=@name,password=@password where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", int.Parse(txt1.Text));
        cmd.Parameters.AddWithValue("@name", txt2.Text);
        cmd.Parameters.AddWithValue("@password", txt3.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
       
        GridView1.EditIndex = -1;
        showData();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.Rows[e.RowIndex].Cells[1].Text;
        SqlConnection con = new SqlConnection(con_string);
        string qry = "delete from login where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", int.Parse(id));
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        showData();
    }
}