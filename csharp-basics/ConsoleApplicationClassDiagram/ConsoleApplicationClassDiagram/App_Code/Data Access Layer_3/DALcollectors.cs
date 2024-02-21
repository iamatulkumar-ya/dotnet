using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DALcollectors
/// </summary>
public class DALcollectors
{
    string con_string = ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString;
    public SqlDataReader getngodata(string ngo_id)
    {
        string qry0 = "select *from ngo_details where ngo_registration_id=@nrid";
        SqlConnection con0 = new SqlConnection(con_string);
        SqlCommand cmd0 = new SqlCommand(qry0, con0);
        cmd0.Parameters.AddWithValue("@nrid", ngo_id);
        con0.Open();
        SqlDataReader rd = cmd0.ExecuteReader();
        return rd;
        con0.Close();

    }



    public SqlDataReader getbuyersdata(string buyers_id)
    {
        string qry1 = "select *from buyer_details where buyer_registration_id=@brid";
        SqlConnection con1 = new SqlConnection(con_string);
        SqlCommand cmd1 = new SqlCommand(qry1, con1);
        cmd1.Parameters.AddWithValue("@brid", buyers_id);
        con1.Open();
        SqlDataReader rd = cmd1.ExecuteReader();
        return rd;
        con1.Close();

    }




    public bool setngonumber(string collectors_id, string collectorsnumber)
    {
        string qry2 = "update ngo_details set ngo_contact_no=@ngo_contact_no where ngo_registration_id=@nrid";
        SqlConnection con2 = new SqlConnection(con_string);
        SqlCommand cmd2 = new SqlCommand(qry2, con2);
        cmd2.Parameters.AddWithValue("@ngo_contact_no", collectorsnumber);
        cmd2.Parameters.AddWithValue("@nrid", collectors_id);
        con2.Open();
        int g = cmd2.ExecuteNonQuery();
        con2.Close();
        if (g != 0)
            return true;
        else
            return false;
    }


    public bool setbuyersnumber(string collectors_id, string collectorsnumber)
    {
        string qry3 = "update buyer_details set buyer_contact_no=@buyersnumber where buyer_registration_id=@brid";
        SqlConnection con3 = new SqlConnection(con_string);
        SqlCommand cmd3 = new SqlCommand(qry3, con3);
        cmd3.Parameters.AddWithValue("@buyersnumber", collectorsnumber);
        cmd3.Parameters.AddWithValue("@brid", collectors_id);
        con3.Open();
        int g = cmd3.ExecuteNonQuery();
        con3.Close();
        if (g != 0)
            return true;
        else
            return false;
    }


    public string getngooldpath(string collectors_id)
    {
        string oldpath;
        string qry4 = "select *from ngo_details where ngo_registration_id=@nrid";
        SqlConnection con4 = new SqlConnection(con_string);
        SqlCommand cmd4 = new SqlCommand(qry4, con4);
        cmd4.Parameters.AddWithValue("@nrid", collectors_id);
        con4.Open();
        SqlDataReader rd = cmd4.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                oldpath = rd[17].ToString().Trim();
                return oldpath;
            }
            con4.Close();
        }
        return null;

    }




    public bool setngoimage(string collectors_id, string imgpath)
    {


        // pic updation
        string qry5 = "update ngo_details set ngo_image=@ngoimage where ngo_registration_id=@nrid";
        SqlConnection con5 = new SqlConnection(con_string);
        SqlCommand cmd5 = new SqlCommand(qry5, con5);
        cmd5.Parameters.AddWithValue("@ngoimage", imgpath);
        cmd5.Parameters.AddWithValue("@nrid", collectors_id);
        con5.Open();
        int g = cmd5.ExecuteNonQuery();
        con5.Close();
        if (g != 0)
            return true;
        else
            return false;

    }




    public string getbuyersoldpath(string collectors_id)
    {
        string oldpath;
        string qry6 = "select *from buyer_details where buyer_registration_id=@brid";
        SqlConnection con6 = new SqlConnection(con_string);
        SqlCommand cmd6 = new SqlCommand(qry6, con6);
        cmd6.Parameters.AddWithValue("@brid", collectors_id);
        con6.Open();
        SqlDataReader rd = cmd6.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                oldpath = rd[17].ToString().Trim();
                return oldpath;
            }
            con6.Close();
        }
        return null;

    }




    public bool setbuyersimage(string collectors_id, string imgpath)
    {


        // pic updation
        string qry7 = "update buyer_details set buyer_image=@buyersimage where buyer_registration_id=@brid";
        SqlConnection con7 = new SqlConnection(con_string);
        SqlCommand cmd7 = new SqlCommand(qry7, con7);
        cmd7.Parameters.AddWithValue("@buyersimage", imgpath);
        cmd7.Parameters.AddWithValue("@brid", collectors_id);
        con7.Open();
        int g = cmd7.ExecuteNonQuery();
        con7.Close();
        if (g != 0)
            return true;
        else
            return false;

    }




}