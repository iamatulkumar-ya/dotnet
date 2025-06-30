using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for DALuserregistration
/// </summary>
public class DALuserregistration                // DATA ACCESS LAYER CONTAINS MAIN LOGIC 
{
    int c;
    string con_string = ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString;
  
	public int submit(BELuserregistration bel)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString);
        string qry0 = "Insert into user_details Values(@uname,@ugender,@uemail,@upassword,@umobn,@uaddress,@ustate,@ucity,@uzipcode,@uimage)";
        SqlConnection con0 = new SqlConnection(con_string);
        SqlCommand cmd0 = new SqlCommand(qry0, con0);

        cmd0.Parameters.AddWithValue("@uname", bel.USERNAME);
        cmd0.Parameters.AddWithValue("@ugender", bel.USERGENDER);
        cmd0.Parameters.AddWithValue("@uemail", bel.USEREMAIL);
        cmd0.Parameters.AddWithValue("@upassword", bel.USERPASSWORD);
        cmd0.Parameters.AddWithValue("@umobn", bel.USERMOBILENUMBER);
        cmd0.Parameters.AddWithValue("@uaddress", bel.USERADDRESS);
        cmd0.Parameters.AddWithValue("@ustate", bel.USERSTATE);
        cmd0.Parameters.AddWithValue("@ucity", bel.USERCITY);
        cmd0.Parameters.AddWithValue("@uzipcode", bel.USERZIPCODE);
        cmd0.Parameters.AddWithValue("@uimage", bel.USERIMAGE);

        con0.Open();
        int r = cmd0.ExecuteNonQuery();
        con0.Close();
        return r;
    }

    public int state(BELuserregistration bel)  // select the state_id from table name state and return(state_id) to the main page
    {

        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString);
        string qry1 = "select state_id from state where state_name=@userstate";
        SqlConnection con1 = new SqlConnection(con_string);
        SqlCommand cmd1 = new SqlCommand(qry1, con1);
        cmd1.Parameters.AddWithValue("@userstate", bel.USTATE);
        con1.Open();
        SqlDataReader rd = cmd1.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                c = int.Parse(rd[0].ToString());
            }
        }
        con1.Close();
        return c;                 //  Return c to the Bal
      
    }

    public DataTable city()  // select cities form table name city based upon the state_id calculated from above code
    {
        string qry2 = "select city_name from city where city_id =" + c.ToString();
        SqlDataAdapter ad = new SqlDataAdapter(qry2, ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString);
        DataTable dt = new DataTable();           // stores the all cities based upon state_id into DataTable type variable dt
        ad.Fill(dt);
        return dt;                              //  Return dt to tha Bal
    }



    public bool Email(BELuserregistration bel)  // for checking the e-mail whether it's pre registered or not
    {
        string qry3 = "select *from user_details where user_email=@uemail";
        SqlConnection con3 = new SqlConnection(con_string);
        SqlCommand cmd3 = new SqlCommand(qry3, con3);
        cmd3.Parameters.AddWithValue("@uemail", bel.UEMAIL);
        con3.Open();
        SqlDataReader rd = cmd3.ExecuteReader();
      
        if(rd.HasRows)                                  // means E-mail is present and corresponding row has found
            return true;
        else
        return false;              // means no e-mail found , new user hai wo
        con3.Close();

    }



    public string createpassword()
    {

        Random d1 = new Random();
        int v1 = d1.Next(100, 999);

        Random d2 = new Random();
        int v2 = d2.Next(1000, 99999);


        char[] albt = new char[26] { 'a', 'p', 'r', 'q', 'k', 'b', 'l', 's', 'c', 'w', 'x', 'h', 't', 'y', 'g', 'e', 'j', 'f', 'd', 'i', 'r', 'n', 'v', 'm', 'o', 'u' };

        Random c1 = new Random();
        int vc1 = c1.Next(0, 25);
        char al1 = albt[vc1];

        Random c2 = new Random();
        int vc2 = c2.Next(0, 15);
        char al2 = albt[vc2];


        Random c3 = new Random();
        int vc3 = c3.Next(10, 25);
        char al3 = albt[vc3];

        string charpass = v1.ToString() + al1.ToString() + v2.ToString() + al2.ToString() + al3.ToString();
        return charpass;
    }


    public  bool sendemail(string to_email, string password, string username)
    {
        MailMessage msg = new MailMessage();
        MailAddress frm = new MailAddress("atulyadav5566@gmail.com");    // sender's e-mail id
        msg.From = frm;
        MailAddress to = new MailAddress(to_email);           // receiver's e-mail id 
        msg.To.Add(to);
        msg.Subject = "Your JOKER Rgistration Information";
        msg.Body = " <html><body><br>Hi <b>" + username + "</b>,<br><br>Welcome to <b>JOKER</b> <i>the sign of happiness...</i>, and thanks for Registring! Now collect your Password below.<br><br><table width=100%><tr><td colspan=2 align=center height=60px bgcolor=lightblue><b>LOGIN USERNAME AND PASSWORD</b></td></tr><tr><td width=50%><b>Username:/Userid</b></td><td width=50% align=right><b>" + to_email + "</b></td></tr><tr><td width=50%><b>Password:</b></td><td width=50% align=right><b>" + password + "</b></td></tr></table><br><br> Thanks and Regards,<br><b>Admin</b><br>JOKER <i>the sign of happiness...</i></body></html>";
        msg.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.EnableSsl = true;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

        NetworkCredential nc = new NetworkCredential("atulyadav5566@gmail.com", "atulyadav9026111881");       // sender's email and password,
        smtp.Credentials = nc;
        try
        {
            smtp.Send(msg);
            return true;

        }
        catch (Exception ex)
        {
            return false;         
        }

    }


    public bool deleterecord(string email)
    {
        string qry5 = "DELETE FROM user_details where user_email=@uemail";
        SqlConnection con5 = new SqlConnection(con_string);
        SqlCommand cmd5 = new SqlCommand(qry5, con5);
        cmd5.Parameters.AddWithValue("@uemail",email);
        con5.Open();
        int g = cmd5.ExecuteNonQuery();
        if (g != 0)
            return true;
        else
            return false;

    }



    public int submitadmindata(BELuserregistration bel)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString);
        string qry00 = "Insert into admin_details Values(@aname,@agender,@aemail,@apassword,@amobn,@aaddress,@astate,@acity,@azipcode,@aimage)";
        SqlConnection con00 = new SqlConnection(con_string);
        SqlCommand cmd00 = new SqlCommand(qry00, con00);

        cmd00.Parameters.AddWithValue("@aname", bel.USERNAME);
        cmd00.Parameters.AddWithValue("@agender", bel.USERGENDER);
        cmd00.Parameters.AddWithValue("@aemail", bel.USEREMAIL);
        cmd00.Parameters.AddWithValue("@apassword", bel.USERPASSWORD);
        cmd00.Parameters.AddWithValue("@amobn", bel.USERMOBILENUMBER);
        cmd00.Parameters.AddWithValue("@aaddress", bel.USERADDRESS);
        cmd00.Parameters.AddWithValue("@astate", bel.USERSTATE);
        cmd00.Parameters.AddWithValue("@acity", bel.USERCITY);
        cmd00.Parameters.AddWithValue("@azipcode", bel.USERZIPCODE);
        cmd00.Parameters.AddWithValue("@aimage", bel.USERIMAGE);

        con00.Open();
        int r = cmd00.ExecuteNonQuery();
        con00.Close();
        return r;
    }
}


