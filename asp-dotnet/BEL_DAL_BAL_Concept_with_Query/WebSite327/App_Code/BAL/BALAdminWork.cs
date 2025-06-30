using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BALAdminWork
/// </summary>
public class BALAdminWork
{
	
    public bool checkLogin(BELAdminWork beladmin)
    {
        DALAdminWork daladmin = new DALAdminWork();
        bool b = daladmin.checkLogin(beladmin);
        return b;
    }
}