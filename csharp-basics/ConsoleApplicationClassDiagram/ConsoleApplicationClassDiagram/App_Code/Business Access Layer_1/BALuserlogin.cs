using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for BALuserlogin
/// </summary>
public class BALuserlogin
{
    DALuserlogin dal = new DALuserlogin();
	public SqlDataReader callcheckusername(BELuserlogin bel)
    {
       SqlDataReader rd=dal.checkusername(bel);
       return rd;
    }


    public bool callcheckpassword(BELuserlogin bel)
    {
        bool pass = dal.checkuserpassword(bel);
        return pass;
    }




    public SqlDataReader callcheckadmindetails(BELuserlogin bel)
    {
        SqlDataReader rd11 = dal.checkadmindetails(bel);
        return rd11;
    }

    public SqlDataReader callcheckuseremail(string email)
    {
        SqlDataReader rd = dal.checkuseremail(email);
        return rd;
    }


    public bool callsendemail(string to_email, string password, string username)
    {
        bool se = dal.sendemail(to_email, password, username);
        return se;
    }

    public bool callchangepassword(string email, string newpass)
    {
        bool g = dal.changepassword(email, newpass);
        return g;
    }


    public bool callchangepasswordsendemail(string email, string newpass)
    {
        bool s = dal.changepasswordsendemail(email, newpass);
        return s;
    }




    public bool callchangeadminpassword(string email, string newpass)
    {
        bool g = dal.changeadminpassword(email, newpass);
        return g;
    }
}