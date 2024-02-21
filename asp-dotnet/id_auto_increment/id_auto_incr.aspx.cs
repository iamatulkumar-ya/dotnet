using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class id_auto_incr : System.Web.UI.Page
{
    string con_string = null;


    public id_auto_incr()
    {
        con_string = "data source=asus\\babu;initial catalog=aspdb;integrated security=true";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        msg.Text = string.Empty;
        idlabel.Visible = false;
        idbox.Visible = false;
        update.Enabled = false;
        showid.Visible = false;
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(con_string);
        string qry = "insert into id_auto values(@n,@p)";
        
        SqlCommand cmd = new SqlCommand(qry, con);
        //string qry2 = "select id from id_auto where name='@n'";
        //SqlCommand cmd2 = new SqlCommand(qry2, con);
       
        cmd.Parameters.AddWithValue("@n", namebox.Text);
        cmd.Parameters.AddWithValue("@p", passwordbox.Text);
       
        
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        if (g != 0)
        {
            //string n = namebox.Text;
            msg.Text = "Data Inserted";

            //  string n = namebox.Text;
            ////string p = passwordbox.Text;
            //string qry2 = "select *from id_auto where name='n'";
            //SqlCommand cmd2 = new SqlCommand(qry2, con);

            //showid.Visible = true;
            //showid.Enabled = false;
            //con.Open();
            //SqlDataReader rd1 = cmd2.ExecuteReader();
            //if (rd1.HasRows)
            //{
            //    while (rd1.Read())
            //    {
            //        showid.Text = rd1["id"].ToString();

            //    }
            //}
            //con.Close();           
        }
        namebox.Text = "";
        passwordbox.Text = "";
        }
        
    
    protected void show_Click(object sender, EventArgs e)
    {

        idlabel.Visible = true;
        idbox.Visible = true;

        idbox.Text = "";
        namebox.Text = "";
        passwordbox.Text = "";





        SqlConnection con = new SqlConnection(con_string);
        string qry = "Select *from id_auto where id=@eid";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@eid", enteridbox.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if(rd.HasRows)
        {
            msg.Text = "Your Data is Here";
            while(rd.Read())
            {
                idbox.Text = rd["id"].ToString();
                namebox.Text = rd[1].ToString();
                passwordbox.Text = rd[2].ToString();

            }
        }
        else
        {
            msg.Text = "Sorry....No Data Found";
        }

        insert.Enabled = false;
        update.Enabled = true;
        idbox.Enabled = false;
        enteridbox.Text = "";
    }
    protected void update_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(con_string);
        string qry = "update id_auto set name=@n,password=@p where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.Parameters.AddWithValue("@id", idbox.Text);
        cmd.Parameters.AddWithValue("@n", namebox.Text);
        cmd.Parameters.AddWithValue("@p", passwordbox.Text);
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        if(g!=0)
        {
            msg.Text = "Data Updated";
        }

        idbox.Visible = false;
        idlabel.Visible = false;
        insert.Enabled = true;
        update.Enabled = false;
        namebox.Text = "";
        passwordbox.Text = "";
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(con_string);
        string qry = "delete *from id_auto where id=@eid";
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.Parameters.AddWithValue("@eid", enteridbox.Text);
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        if(g!=0)
        {
            msg.Text = "Data Deleted";
        }

    }
}