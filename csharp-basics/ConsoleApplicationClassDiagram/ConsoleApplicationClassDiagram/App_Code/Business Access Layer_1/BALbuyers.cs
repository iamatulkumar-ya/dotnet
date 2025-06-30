using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BALbuyers
/// </summary>
public class BALbuyers
{
    DALbuyers dalb = new DALbuyers();

    public bool callcheckemail(BELbuyers belb)
    {

        bool result = dalb.checkemail(belb);
        return result;
    }


    public bool calldeleterecord(string buyersregistrationid)
    {


        bool dr = dalb.deleterecord(buyersregistrationid);
        return dr;
    }


    public bool callsubmitdata(BELbuyers belb)
    {

        bool sd = dalb.submitdata(belb);
        return sd;
    }




    public SqlDataReader callcheckbuyer(string buyerid, string buyerpass)
    {
        SqlDataReader rd = dalb.checkbuyer(buyerid, buyerpass);
        return rd;

    }
}