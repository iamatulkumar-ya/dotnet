using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for DALGridWork
/// </summary>
public class DALGridWork
{
    string con_string = null;
    public DataTable selectData()
    {
        string qry = "select *from login";
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        return dt;
    }
    public void updatedata(BELGridWork bel)
    {
        SqlConnection con = new SqlConnection(con_string);
        string qry = "update login set name=@name,password=@password where id=@id";
        SqlCommand cmd = new SqlCommand(qry,con);
        cmd.Parameters.AddWithValue("@id", bel.ID);
        cmd.Parameters.AddWithValue("@name", bel.NAME);
        cmd.Parameters.AddWithValue("@password", bel.PASSWORD);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void deleteData(BELGridWork bel)
    {
        SqlConnection con = new SqlConnection(con_string);
        string qry = "delete from login where id=@id";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@id", bel.ID);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }
	public DALGridWork()
	{
        con_string = "Data source=gunnu;initial catalog=empinfo;integrated security=true";
	}
}