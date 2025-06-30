using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for BALuserregistration
/// </summary>
public class BALuserregistration                 // BUSINESS ACCESS LAYER CALLS ALL METHODS OF DATA ACCESS LAYER
{
    DALuserregistration dal = new DALuserregistration();       // dal is the Instance variable of DALuserregistration, here we create this for calling the methods of DALuserregistration //

    public int callsubmit(BELuserregistration bel)       // method contains "bel" that holds all values of main page(userregistration.aspx) //
    {
        int r = dal.submit(bel);                     // dal.submit(bel)  calls the method submit which are present in DALuseregistreation and having bel as a value //
        return r;                                   // returns r to main page(userregistration.aspx) //

    }


    public int callstate(BELuserregistration bel)     // calls the state method 
    { 
        int c = dal.state(bel);                      
        return c;
    }

    public DataTable callcity()
    {
        DataTable dt = dal.city();
        return dt;
    }

    public bool callemail(BELuserregistration bel)     // check whether the email is present or not ?
    {
        bool e = dal.Email(bel);
        return e;
    }

    public string callcreatepassword()
    {
        string pass = dal.createpassword();
        return pass;
    }


    public bool callsendemail(string to_email, string password, string username)
    {
       
        bool result = dal.sendemail(to_email, password, username);
        return result;
    }

    public bool calldeleterecord(string email)
    {
        bool g = dal.deleterecord(email);
        return g;
    }



    public int callsubmitadmindata(BELuserregistration bel)       // method contains "bel" that holds all values of main page(userregistration.aspx) //
    {
        int r = dal.submitadmindata(bel);                     // dal.submit(bel)  calls the method submit which are present in DALuseregistreation and having bel as a value //
        return r;                                   // returns r to main page(userregistration.aspx) //

    }

}