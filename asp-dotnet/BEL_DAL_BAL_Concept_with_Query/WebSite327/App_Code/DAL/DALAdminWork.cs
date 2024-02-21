using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
/// <summary>
/// Summary description for DALAdminWork
/// </summary>
public class DALAdminWork
{
	
    public bool checkLogin(BELAdminWork beladmin)
    {
        string con_string = "Data Source=gunnu;initial catalog=empinfo;integrated security=true";
        SqlConnection con = new SqlConnection(con_string);
        string qry = "select count(*) from login where name=@name and password=@password";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@name", beladmin.UName);
        cmd.Parameters.AddWithValue("@password", beladmin.UPassword);
        con.Open();
        int g = (int)cmd.ExecuteScalar();
        con.Close();
        if (g != 0)
            return true;
        else
            return false;
    }
}