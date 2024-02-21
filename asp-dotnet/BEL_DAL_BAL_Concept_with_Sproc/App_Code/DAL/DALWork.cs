using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DALWork
/// </summary>
public class DALWork   // Data Access Layer Consiting Main Logic in Various Methods and these methods called by BAL(BUSINESS ACCESS LAYER)
{
    string con_string = "data source=asus\\babu;initial catalog=aspdb;integrated security=true";
    public int insertdata(BELWork bel)    // bel is a object of BELWork
    {
        SqlConnection con = new SqlConnection(con_string);
        SqlCommand cmd = new SqlCommand("operation", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@id", bel.ID);
        cmd.Parameters.AddWithValue("@name", bel.NAME);
        cmd.Parameters.AddWithValue("@password", bel.PASSWORD);
        cmd.Parameters.AddWithValue("@flag", bel.FLAG);

        con.Open();
        int g = cmd.ExecuteNonQuery();        
        con.Close();
        return g;
    }

    public int updatedata(BELWork bel)
    {
        SqlConnection con = new SqlConnection(con_string);
        SqlCommand cmd = new SqlCommand("operation", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@id", bel.ID);
        cmd.Parameters.AddWithValue("@name", bel.NAME);
        cmd.Parameters.AddWithValue("@password", bel.PASSWORD);
        cmd.Parameters.AddWithValue("@flag", bel.FLAG);

        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        return g;
    }

    public DataTable showdata(BELWork bel)     // data type(DataTable) of this method(showdata) returns corresponding data row from datatable
    {
        
        SqlDataAdapter ad = new SqlDataAdapter("operation", con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        return dt;
    }

    public int deletedata(BELWork bel)
    {
        SqlConnection con = new SqlConnection(con_string);
        SqlCommand cmd = new SqlCommand("operation", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@id", bel.ID);
        con.Open();
        int g = cmd.ExecuteNonQuery();
        con.Close();
        return g;
    }
}