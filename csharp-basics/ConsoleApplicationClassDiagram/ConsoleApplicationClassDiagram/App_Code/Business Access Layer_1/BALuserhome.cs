using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BALuserhome
/// </summary>
public class BALuserhome
{

    DALuserhome dal = new DALuserhome();
    public SqlDataReader callgetdata(string email)
    {
        SqlDataReader rd = dal.getdata(email);
        return rd;
    }

    public SqlDataReader callgetadmindata(string email)
    {
        SqlDataReader rd = dal.getadmindata(email);
        return rd;
    }

    public bool callsetname(string email,string username)
    {
        bool g = dal.setname(email, username);
        return g;
    }


    public bool callsetnumber(string email, string usernumber)
    {
        bool g = dal.setnumber(email, usernumber);
        return g;
    }

    public bool callsetimage(string email,string imgpath)
    {
        bool g = dal.setimage(email, imgpath);
        return g;
    }

    public bool callsetadminimage(string email, string imgpath)
    {
        bool g = dal.setadminimage(email, imgpath);
        return g;
    }


    public string callgetoldpath(string email)
    {
        string oldpath = dal.getoldpath(email);
        return oldpath;
    }

    public string callgetoldadminpath(string email)
    {
        string oldpath = dal.getoldadminpath(email);
        return oldpath;
    }
}