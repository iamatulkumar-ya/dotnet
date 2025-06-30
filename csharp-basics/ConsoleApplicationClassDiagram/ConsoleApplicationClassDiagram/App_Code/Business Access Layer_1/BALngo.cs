using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BALngo
/// </summary>
public class BALngo                    // BUSINESS ACCESS LAYER CALLS ALL METHODS OF DATA ACCESS LAYER
{

    DALngo dalngo = new DALngo();
    public bool callcheckemail(BELngo belngo)     // check whether the email is present or not ?
    {
        bool e = dalngo.checkemail(belngo);
        return e;
    }


    public bool callsubmitdata(BELngo belngo)
    {
        bool result = dalngo.submitdata(belngo);
        return result;
    }

    public bool calldeleterecord(string ngoregistrationid)
    {
        bool delete = dalngo.deleterecord(ngoregistrationid);
        return delete;
    }


    public SqlDataReader callcheckngo(string ngoid, string ngopass)
    {
        SqlDataReader rd = dalngo.checkngo(ngoid, ngopass);
        return rd;
    }
}