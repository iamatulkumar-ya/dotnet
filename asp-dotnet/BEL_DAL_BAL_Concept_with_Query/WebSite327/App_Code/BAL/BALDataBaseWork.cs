using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for BALDataBaseWork
/// </summary>
public class BALDataBaseWork
{
    public DataTable selectData(BELDataBaseWork bel)
    {
        DALDataBaseWork ob = new DALDataBaseWork();
        DataTable dt=ob.selectdata(bel);
        return dt;
    }
    public int deletedata(BELDataBaseWork bel)
    {
        DALDataBaseWork ob = new DALDataBaseWork();
        int g = ob.deletedata(bel);
        return g;
    }
    public int updatetdata(BELDataBaseWork bel)
    {
        DALDataBaseWork ob = new DALDataBaseWork();
        int g = ob.updatedata(bel);
        return g;
    }
	
    public int insertdata(BELDataBaseWork bel)
    {
        DALDataBaseWork ob = new DALDataBaseWork();
        int g=ob.insertdata(bel);
        return g;
    }

}