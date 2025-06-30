using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class login_table : System.Web.UI.Page
{
    string con_string = null;
    public login_table()    // constructor automatically execute when page will run
    {
         con_string = "data source=asus\\babu;initial catalog=aspdb;integrated security=true";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        update.Enabled = false;
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        SqlConnection  con = new SqlConnection(con_string);
        string qry = "insert into login_asp values(@id,@name,@password)";
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.Parameters.AddWithValue("@id", int.Parse(TextBox1.Text));
        cmd.Parameters.AddWithValue("@name",(TextBox2.Text));
        cmd.Parameters.AddWithValue("@password",(TextBox3.Text));
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        if(g!=0)
        {
            msg.Text = "Data Inserted";
        }

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
       

    }
    protected void update_Click(object sender, EventArgs e)
    {
        insert.Enabled = false;
        TextBox1.Enabled = false;
        SqlConnection con = new SqlConnection(con_string);
        string qry = "update login_asp set Name=@name, Password=@password where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", TextBox1.Text);
        cmd.Parameters.AddWithValue("@name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@password", TextBox3.Text);
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        if(g!=0)
        {
            msg.Text = "Data Updated";
        }
    
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        insert.Enabled = true;
        TextBox1.Enabled= true;
 
    }
    protected void show_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(con_string);
        string qry = "select *from login_asp where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", TextBox4.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if(rd.HasRows)
        {
            while(rd.Read())
            {
                TextBox1.Text = rd[0].ToString();
                TextBox2.Text = rd[1].ToString();
                TextBox3.Text = rd[2].ToString();
            }
            msg.Text = "Your Data is Here";
        }
        else
        {
            msg.Text="Sorry No Data found";
        }
        con.Close();
        TextBox4.Text = "";
        TextBox1.Enabled = false;
        insert.Enabled = false;
        update.Enabled = true;

    }
    protected void delete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(con_string);
        string qry = "Delete login_asp where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", int.Parse(TextBox4.Text));
        
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        if (g != 0)
        {
            msg.Text = "Data Deleted";
        }
        else
        {
            msg.Text = "wrong id....Try again please";
        }

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        insert.Enabled = true;
    }
   
}