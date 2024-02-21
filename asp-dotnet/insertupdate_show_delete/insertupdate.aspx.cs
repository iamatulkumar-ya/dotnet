using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class insertupdate : System.Web.UI.Page
{
    string con_string = null;
    int flag = 1;
    public insertupdate()
    {
         con_string = "data source=asus\\babu;initial catalog=aspdb;integrated security=true";
         
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        insup.Text = "insert=====(update)x";
        
        
    }
    protected void insup_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(con_string);
        if (flag == 1)
        {
            string qry = "insert into login_asp values(@id,@name,@password)";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@id", int.Parse(idbox.Text));
            cmd.Parameters.AddWithValue("@name", namebox.Text);
            cmd.Parameters.AddWithValue("@password", passwordbox.Text);
            con.Open();
            int g = cmd.ExecuteNonQuery();
            con.Close();
            if (g != 0)
            {
                msg.Text = "Data inserted";
            }
            idbox.Text = "";
            namebox.Text = "";
            passwordbox.Text = "";
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            string qry = "update login_asp set name=@name, password=@password where id=@id ";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@id", int.Parse(idbox.Text));
            cmd.Parameters.AddWithValue("@name", namebox.Text);
            cmd.Parameters.AddWithValue("@password", passwordbox.Text);
            con.Open();
            int g = cmd.ExecuteNonQuery();
            con.Close();
            if (g != 0)
            {
                msg.Text = "Data updated";
            }
            flag = 1;
            idbox.Enabled = true;
            idbox.Text = "";
            namebox.Text = "";
            passwordbox.Text = "";

        }

    }
    protected void show_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(con_string);
        string qry = "select *from login_asp where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", int.Parse(id2box.Text));
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if(rd.HasRows)
        {
            while(rd.Read())
            {
                idbox.Text = rd[0].ToString();
                namebox.Text = rd[1].ToString();
                passwordbox.Text = rd[2].ToString();
            }
        }
        else
        {
            msg.Text = "iD doesn't found";
        }
        con.Close();
        idbox.Enabled = false;
        id2box.Text = "";
        insup.Text = "(insert)x=====update";
        flag = 2;
        

    }
    protected void delete_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(con_string);
        string qry = "Delete login_asp where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", int.Parse(id2box.Text));       
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        if (g != 0)
        {
            msg.Text = "Data deleted";
        }
        id2box.Text = "";
    }
}