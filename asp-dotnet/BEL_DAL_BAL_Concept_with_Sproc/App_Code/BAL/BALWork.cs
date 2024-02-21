using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BALWork
/// </summary>
public class BALWork     // Business Access Layer calls all DAL Methods
{
    DALWork dal = new DALWork();                                  // instance variable of DALWork //
	public int callinsertdata(BELWork bel)                       
    {       
        int g = dal.insertdata(bel);                              // Calls insertdata method present is DALWork //
        return g;
    }

    public int callupdatedata(BELWork bel)
    {
        int g = dal.updatedata(bel);
        return g;
    }

    public DataTable callshowdata(BELWork bel)
    {
        DataTable g = dal.showdata(bel);
        return g;
    }

    public int calldeletedata(BELWork bel)
    {
        DALWork dal = new DALWork();
        int g = dal.deletedata(bel);
        return g;
    }
}