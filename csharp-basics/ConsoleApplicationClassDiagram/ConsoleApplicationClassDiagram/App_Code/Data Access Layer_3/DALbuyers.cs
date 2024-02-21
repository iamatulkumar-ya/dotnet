using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DALbuyers
/// </summary>
public class DALbuyers
{


    string con_string = ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString;

    public bool checkemail(BELbuyers belb)  // for checking the e-mail whether it's pre registered or not
    {
        string qry0 = "select *from buyer_details where buyer_email=@bemail";
        SqlConnection con0 = new SqlConnection(con_string);
        SqlCommand cmd0 = new SqlCommand(qry0, con0);
        cmd0.Parameters.AddWithValue("@bemail", belb.BUYERSEMAIL);
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



    public bool submitdata(BELbuyers belb)
    {
        

        string qry1 = "INSERT INTO buyer_details Values(@oname,@ogender,@oemail,@omobileno,@bname,@bmembers,@bregisterationid,@bemail,@bpassword,@baddress,@bcontact,@bwebsitename,@bstate,@bcity,@bdistrict,@bzipcode,@bimage,@bstatus,@bst)";
        SqlConnection con1 = new SqlConnection(con_string);
        SqlCommand cmd1 = new SqlCommand(qry1, con1);
        cmd1.Parameters.AddWithValue("@oname", belb.OWNERNAME);
        cmd1.Parameters.AddWithValue("@ogender", belb.OWNERGENDER);
        cmd1.Parameters.AddWithValue("@oemail", belb.OWNEREMAIL);
        cmd1.Parameters.AddWithValue("@omobileno", belb.OWNERMOBILENUMBER);
        cmd1.Parameters.AddWithValue("@bname", belb.BUYERSNAME);
        cmd1.Parameters.AddWithValue("@bmembers", belb.BUYERSNOOFMEMBERS);
        cmd1.Parameters.AddWithValue("@bregisterationid", belb.BUYERSREGISTRATIONID);
        cmd1.Parameters.AddWithValue("@bemail", belb.BUYERSEMAIL);
        cmd1.Parameters.AddWithValue("@bpassword", belb.BUYERSPASSWORD);
        cmd1.Parameters.AddWithValue("@baddress", belb.BUYERSADDRESS);
        cmd1.Parameters.AddWithValue("@bcontact", belb.BUYERSCONTACTNUMBER);
        cmd1.Parameters.AddWithValue("@bstate", belb.BUYERSSTATE);
        cmd1.Parameters.AddWithValue("@bcity", belb.BUYERSCITY);
        cmd1.Parameters.AddWithValue("@bdistrict", belb.BUYERSDISTRICT);
        cmd1.Parameters.AddWithValue("@bzipcode", belb.BUYERSZIPCODE);
        cmd1.Parameters.AddWithValue("@bimage", belb.BUYERSIMAGE);
        cmd1.Parameters.AddWithValue("@bstatus", belb.BUYERSSTATUS);
        cmd1.Parameters.AddWithValue("@bwebsitename", belb.BUYERSWEBSITENAME);
        cmd1.Parameters.AddWithValue("@bst", belb.BUYERST);

        con1.Open();
        int g = cmd1.ExecuteNonQuery();
        con1.Close();
        if (g != 0)                            // means data submitted
            return true;
        else return false;

    }


    public bool deleterecord(string buyersregistrationid)
    {
        string qry5 = "DELETE FROM buyer_details where buyer_registration_id=@brid";
        SqlConnection con5 = new SqlConnection(con_string);
        SqlCommand cmd5 = new SqlCommand(qry5, con5);
        cmd5.Parameters.AddWithValue("@brid", buyersregistrationid);
        con5.Open();
        int g = cmd5.ExecuteNonQuery();
        if (g != 0)
            return true;
        else
            return false;

    }



    public SqlDataReader checkbuyer(string buyerid, string buyerpass)
    {
        string qry6 = "select *from buyer_details where buyer_registration_id=@bregistration AND buyer_password=@bpassword";
        SqlConnection con6 = new SqlConnection(con_string);
        SqlCommand cmd6 = new SqlCommand(qry6, con6);
        cmd6.Parameters.AddWithValue("@bregistration", buyerid);
        cmd6.Parameters.AddWithValue("@bpassword", buyerpass);
        con6.Open();
        SqlDataReader rd = cmd6.ExecuteReader();
        return rd;

    }
}