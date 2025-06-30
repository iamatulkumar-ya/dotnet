using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BALcollectors
/// </summary>
public class BALcollectors
{

    DALcollectors dalc = new DALcollectors();
    public SqlDataReader callgetngodata(string ngo_id)
    {
        SqlDataReader rd0 = dalc.getngodata(ngo_id);
        return rd0;
    }


    public SqlDataReader callgetbuyersdata(string buyers_id)
    {
        SqlDataReader rd1 = dalc.getbuyersdata(buyers_id);
        return rd1;
    }

    public bool callsetngonumber(string collectors_id, string collectorsnumber)
    {
        bool nn = dalc.setngonumber(collectors_id, collectorsnumber);
        return nn;
    }

    public bool callsetbuyersnumber(string collectors_id, string collectorsnumber)
    {
        bool nn = dalc.setbuyersnumber(collectors_id, collectorsnumber);
        return nn;
    }



    public string callgetngooldpath(string collectors_id)
    {

        string oldpath = dalc.getngooldpath(collectors_id);
        return oldpath;
    }



    public bool callsetngoimage(string collectors_id, string imgpath)
    {
        bool result = dalc.setngoimage(collectors_id, imgpath);
        return result;
    }


    public string callgetbuyersoldpath(string collectors_id)
    {

        string oldpath = dalc.getbuyersoldpath(collectors_id);
        return oldpath;
    }



    public bool callsetbuyersimage(string collectors_id, string imgpath)
    {
        bool result = dalc.setbuyersimage(collectors_id, imgpath);
        return result;
    }
}