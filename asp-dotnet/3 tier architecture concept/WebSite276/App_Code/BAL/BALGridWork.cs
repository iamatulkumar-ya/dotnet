using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BALGridWork
/// </summary>
public class BALGridWork
{
	
    public DataTable selectInfo()
    {
        DALGridWork ob = new DALGridWork();
        DataTable dt = ob.selectData();
        return dt;
    }
    public void deleteInfo(BELGridWork bel)
    {
        DALGridWork ob = new DALGridWork();
        ob.deleteData(bel);
    }
    public void updateInfo(BELGridWork bel)
    {
        DALGridWork ob = new DALGridWork();
        ob.updatedata(bel);
    }
}