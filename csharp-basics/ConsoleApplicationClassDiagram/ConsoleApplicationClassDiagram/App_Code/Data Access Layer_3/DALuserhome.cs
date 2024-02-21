using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;


/// <summary>
/// Summary description for DALuserhome
/// </summary>
public class DALuserhome
{
    string con_string = ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString;

    public string x;
    public SqlDataReader getdata(string email)
    {
        string qry0 = "select *from user_details where user_email=@email";
        SqlConnection con0 = new SqlConnection(con_string);
        SqlCommand cmd0 = new SqlCommand(qry0, con0);
        cmd0.Parameters.AddWithValue("@email", email);
        con0.Open();
        SqlDataReader rd = cmd0.ExecuteReader();
        return rd;

        con0.Close();

    }

    public bool setname(string email, string username)
    {
        string qry1 = "update user_details set user_name=@username where user_email=@email";
        SqlConnection con1 = new SqlConnection(con_string);
        SqlCommand cmd1 = new SqlCommand(qry1, con1);
        cmd1.Parameters.AddWithValue("@username", username);
        cmd1.Parameters.AddWithValue("@email", email);
        con1.Open();
        int g = cmd1.ExecuteNonQuery();
        con1.Close();
        if (g != 0)
            return true;
        else
            return false;

    }

    public bool setnumber(string email, string usernumber)
    {
        string qry2 = "update user_details set user_mobilenumber=@usernumber where user_email=@email";
        SqlConnection con2 = new SqlConnection(con_string);
        SqlCommand cmd2 = new SqlCommand(qry2, con2);
        cmd2.Parameters.AddWithValue("@usernumber", usernumber);
        cmd2.Parameters.AddWithValue("@email", email);
        con2.Open();
        int g = cmd2.ExecuteNonQuery();
        con2.Close();
        if (g != 0)
            return true;
        else
            return false;
    }

    public bool setimage(string email, string imgpath)
    {


        // pic updation
        string qry4 = "update user_details set user_image=@userimage where user_email=@email";
        SqlConnection con4 = new SqlConnection(con_string);
        SqlCommand cmd4 = new SqlCommand(qry4, con4);
        cmd4.Parameters.AddWithValue("@userimage", imgpath);
        cmd4.Parameters.AddWithValue("@email", email);
        con4.Open();
        int g = cmd4.ExecuteNonQuery();
        con4.Close();
        if (g != 0)
            return true;
        else
            return false;

    }


    public string getoldpath(string email)
    {
        string oldpath;
        string qry3 = "select *from user_details where user_email=@email";
        SqlConnection con3 = new SqlConnection(con_string);
        SqlCommand cmd3 = new SqlCommand(qry3, con3);
        cmd3.Parameters.AddWithValue("@email", email);
        con3.Open();
        SqlDataReader rd = cmd3.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                oldpath = rd[9].ToString().Trim();
                return oldpath;
            }
            con3.Close();
        }
        return null;

    }




    public SqlDataReader getadmindata(string email)
    {
        string qry00 = "select *from admin_details where admin_email=@email";
        SqlConnection con00 = new SqlConnection(con_string);
        SqlCommand cmd00 = new SqlCommand(qry00, con00);
        cmd00.Parameters.AddWithValue("@email", email);
        con00.Open();
        SqlDataReader rd = cmd00.ExecuteReader();
        return rd;

        con00.Close();

    }


    public bool setadminimage(string email, string imgpath)
    {


        // pic updation
        string qry44 = "update admin_details set admin_image=@userimage where admin_email=@email";
        SqlConnection con44 = new SqlConnection(con_string);
        SqlCommand cmd44 = new SqlCommand(qry44, con44);
        cmd44.Parameters.AddWithValue("@userimage", imgpath);
        cmd44.Parameters.AddWithValue("@email", email);
        con44.Open();
        int g = cmd44.ExecuteNonQuery();
        con44.Close();
        if (g != 0)
            return true;
        else
            return false;

    }



    public string getoldadminpath(string email)
    {
        string oldpath;
        string qry33 = "select *from admin_details where admin_email=@email";
        SqlConnection con33 = new SqlConnection(con_string);
        SqlCommand cmd33 = new SqlCommand(qry33, con33);
        cmd33.Parameters.AddWithValue("@email", email);
        con33.Open();
        SqlDataReader rd = cmd33.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                oldpath = rd[9].ToString().Trim();
                return oldpath;
            }
            con33.Close();
        }
        return null;

    }

}
