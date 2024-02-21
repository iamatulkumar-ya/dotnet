using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
/// <summary>
/// Summary description for DALDataBaseWork
/// </summary>
public class DALDataBaseWork
{
    string con_string = "Data Source=gunnu;initial catalog=empinfo;integrated security=true";
    public int insertdata(BELDataBaseWork bel)
    {
        string qry = "insert into login values(@id,@name,@password)";
        SqlConnection con = new SqlConnection(con_string);
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id",bel.ID);
        cmd.Parameters.AddWithValue("@name",bel.NAME);
        cmd.Parameters.AddWithValue("@password",bel.PASSWORD);
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        return g;
    }

    public int updatedata(BELDataBaseWork bel)
    {
        string qry = "update login set name=@name,password=@password where id=@id";
        SqlConnection con = new SqlConnection(con_string);
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", bel.ID);
        cmd.Parameters.AddWithValue("@name", bel.NAME);
        cmd.Parameters.AddWithValue("@password", bel.PASSWORD);
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        return g;
    }
    public int deletedata(BELDataBaseWork bel)
    {
        string qry = "delete from login where id=@id";
        SqlConnection con = new SqlConnection(con_string);
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", bel.ID);


        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        return g;
    }
    public DataTable selectdata(BELDataBaseWork bel)
    {
        string qry = "select *from login where id=" + bel.ID;
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        return dt;
    }

}