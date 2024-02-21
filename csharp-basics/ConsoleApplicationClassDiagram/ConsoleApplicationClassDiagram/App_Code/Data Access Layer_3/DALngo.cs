using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DALngo
/// </summary>
public class DALngo                       // DATA ACCESS LAYER CONTAINS MAIN LOGIC 
{
    string con_string = ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString;
    public bool checkemail(BELngo belngo)  // for checking the e-mail whether it's pre registered or not
    {
        string qry0 = "select *from ngo_details where ngo_email=@nemail";
        SqlConnection con0 = new SqlConnection(con_string);
        SqlCommand cmd0 = new SqlCommand(qry0, con0);
        cmd0.Parameters.AddWithValue("@nemail", belngo.NGOEMAIL);
        con0.Open();
        SqlDataReader rd = cmd0.ExecuteReader();

        if (rd.HasRows)
        {                             // means E-mail is present and corresponding row has found
            con0.Close(); 
            return true;
        }
        else
            return false;              // means no e-mail found , new user hai wo
  

    }



    public bool submitdata(BELngo belngo)
    {

        string qry1 = "INSERT INTO ngo_details Values(@oname,@ogender,@oemail,@omobileno,@nname,@nmembers,@ntype,@njuri,@nregisterationid,@nemail,@npassword,@naddress,@ncontact,@nstate,@ncity,@ndistrict,@nzipcode,@nimage,@nstatus,@nwebsitename,@nst)";
        SqlConnection con1 = new SqlConnection(con_string);
        SqlCommand cmd1 = new SqlCommand(qry1, con1);
        cmd1.Parameters.AddWithValue("@oname", belngo.OWNERNAME);
        cmd1.Parameters.AddWithValue("@ogender", belngo.OWNERGENDER);
        cmd1.Parameters.AddWithValue("@oemail", belngo.OWNEREMAIL);
        cmd1.Parameters.AddWithValue("@omobileno", belngo.OWNERMOBILENUMBER);
        cmd1.Parameters.AddWithValue("@nname", belngo.NGONAME);
        cmd1.Parameters.AddWithValue("@nmembers", belngo.NGONOOFMEMBERS);
        cmd1.Parameters.AddWithValue("@ntype", belngo.NGOTYPE);
        cmd1.Parameters.AddWithValue("@njuri", belngo.NGOJURIDICTION);
        cmd1.Parameters.AddWithValue("@nregisterationid", belngo.NGOREGISTRATIONID);
        cmd1.Parameters.AddWithValue("@nemail", belngo.NGOEMAIL);
        cmd1.Parameters.AddWithValue("@npassword", belngo.NGOPASSWORD);
        cmd1.Parameters.AddWithValue("@naddress", belngo.NGOADDRESS);
        cmd1.Parameters.AddWithValue("@ncontact", belngo.NGOCONTACTNUMBER);
        cmd1.Parameters.AddWithValue("@nstate", belngo.NGOSTATE);
        cmd1.Parameters.AddWithValue("@ncity", belngo.NGOCITY);
        cmd1.Parameters.AddWithValue("@ndistrict", belngo.NGODISTRICT);
        cmd1.Parameters.AddWithValue("@nzipcode", belngo.NGOZIPCODE);
        cmd1.Parameters.AddWithValue("@nimage", belngo.NGOIMAGE);
        cmd1.Parameters.AddWithValue("@nstatus", belngo.NGOSTATUS);
        cmd1.Parameters.AddWithValue("@nwebsitename", belngo.NGOWEBSITENAME);
        cmd1.Parameters.AddWithValue("@nst", belngo.NGOST);

        con1.Open();
        int g = cmd1.ExecuteNonQuery();
        con1.Close();
        if (g != 0)                            // means data submitted
            return true;
        else return false;

    }

    public SqlDataReader checkngo(string ngoid, string ngopass)
    {
        string qry2 = "select *from ngo_details where ngo_registration_id=@nregistration AND ngo_password=@npassword";
        SqlConnection con2 = new SqlConnection(con_string);
        SqlCommand cmd2 = new SqlCommand(qry2, con2);
        cmd2.Parameters.AddWithValue("@nregistration",ngoid);
        cmd2.Parameters.AddWithValue("@npassword",ngopass);
        con2.Open();
        SqlDataReader rd = cmd2.ExecuteReader();
        return rd;

    }



    public bool deleterecord(string ngoregistrationid)
    {
        string qry5 = "DELETE FROM ngo_details where ngo_registration_id=@ngoid";
        SqlConnection con5 = new SqlConnection(con_string);
        SqlCommand cmd5 = new SqlCommand(qry5, con5);
        cmd5.Parameters.AddWithValue("@ngoid", ngoregistrationid);
        con5.Open();
        int g = cmd5.ExecuteNonQuery();
        if (g != 0)
            return true;
        else
            return false;

    }
}