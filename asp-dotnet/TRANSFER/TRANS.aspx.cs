using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TRANS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string con_string = "Data source=asus\babu;initial catalog=mydb;integrated security=true";
        SqlConnection con = new SqlConnection(con_string);
        string query = "insert into tb2 select *from tb1 where id=@id";
        string query2 = "Delete from tb1 where id=@id";      
        SqlCommand cmd = new SqlCommand(query, con);
        SqlCommand cmd2 = new SqlCommand(query2, con);
      
        cmd.Parameters.AddWithValue("@id", int.Parse(TextBox1.Text));
        cmd2.Parameters.AddWithValue("@id", int.Parse(TextBox1.Text));
        con.Open();
        int g = cmd.ExecuteNonQuery();
        int f = cmd2.ExecuteNonQuery();
        if (g != 0 && f!=0)
        {
            Label1.Text = "successfully transfered";
        }
        else
        {
            Label1.Text = "wrong id";
        }
        con.Close();
    }
}