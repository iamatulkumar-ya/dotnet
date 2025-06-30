using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BELuserregistration
/// </summary>
/// 

// BUSINESS ENTITY LAYER CONTAINS ALL PROPERTIES //
public class BELuserregistration        // BELuseregistration is a class name //       
{
    public string USERNAME {get; set;}
    public string USERGENDER { get; set; }
    public string USEREMAIL { get; set; }
    public string USERPASSWORD { get; set; }
    public string USERMOBILENUMBER { get; set; }
    public string USERADDRESS { get; set; }
    public string USERSTATE { get; set; }
    public string USERCITY { get; set; }
    public long USERZIPCODE { get; set; }
    public string USERIMAGE { get; set; }

    public string USTATE { get; set; }      // FOR SELECTION OF STATE

    public string UEMAIL { get; set; }     //  FOR STORING THE E-MAIL WHILE REGISTRATION TI CHECK WHETHER IT IS PRESENT OR NOT


   
}
