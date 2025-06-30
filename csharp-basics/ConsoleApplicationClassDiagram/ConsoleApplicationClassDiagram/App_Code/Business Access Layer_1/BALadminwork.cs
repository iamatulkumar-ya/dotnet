using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BALadminwork
/// </summary>
public class BALadminwork
{
    DALadminwork dalad = new DALadminwork();
    public SqlDataReader callresult(string qry)
    {
        SqlDataReader rd = dalad.result(qry);
        return rd;
    }

    public SqlDataReader callbresult(string qry1)
    {
        SqlDataReader rd1 = dalad.bresult(qry1);
        return rd1;
    }


    public bool callsendemail(string to_email, string password, string name, string id)
    {
        bool result = dalad.sendemail(to_email, password, name, id);
        return result;
    }


    public SqlDataReader calluserresult(string qry)
    {
        SqlDataReader rd = dalad.userresult(qry);
        return rd;
    }


    public SqlDataReader callngonameresult(string qry)
    {
        SqlDataReader rd = dalad.ngonameresult(qry);
        return rd;
    }


    public SqlDataReader callngonameid(string ngoname)
    {
        SqlDataReader rd = dalad.ngonameid(ngoname);
        return rd;
    }

    public string callrandom()
    {
        string r = dalad.random();
        return r;
    }



    public bool calldonatescrap(BELadminwork belad)
    {
        bool result = dalad.donatescrap(belad);
        return result;
    }



    public bool calldeletedonatedata(string id)
    {
        bool result = dalad.deletedonatedata(id);
        return result;
    }


    public bool callchangetoaccepted(string did)
    {
        bool c = dalad.changetoaccepted(did);
        return c;
    }
}