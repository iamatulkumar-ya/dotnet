using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for DALadminwork
/// </summary>
public class DALadminwork
{
    string con_string = ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString;
    public SqlDataReader result(string qry)
    {
        SqlConnection con = new SqlConnection(con_string);
        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        return rd;
        con.Close();
    }


    public SqlDataReader bresult(string qry1)
    {
        SqlConnection con1 = new SqlConnection(con_string);
        SqlCommand cmd1 = new SqlCommand(qry1, con1);
        con1.Open();
        SqlDataReader rd = cmd1.ExecuteReader();
        return rd;
        con1.Close();
    }





    public bool sendemail(string to_email, string password, string name, string id)
    {

        MailMessage msg = new MailMessage();
        MailAddress frm = new MailAddress("atulyadav5566@gmail.com");    // sender's e-mail id
        msg.From = frm;
        MailAddress to = new MailAddress(to_email);           // receiver's e-mail id 
        msg.To.Add(to);
        msg.Subject = "Your JOKER Account Information";
        msg.Body = " <html><body><br>Hi <b>" + name + "</b>,<br><br>Welcome to <b>JOKER</b> <i>the sign of happiness...</i>,Thank you for registring with us. This email contains your login information for <b>Joker</b>. Please collect your Password below and starts your journey today.<br><br><table width=100%><tr><td colspan=2 align=center height=60px bgcolor=lightblue><b>LOGIN USERNAME AND PASSWORD</b></td></tr><tr><td width=50%><b>Username:/Userid</b></td><td width=50% align=right><b>" + id + "</b></td></tr><tr><td width=50%><b>Password:</b></td><td width=50% align=right><b>" + password + "</b></td></tr></table><br><br> Thanks and Regards,<br><b>Admin</b><br>JOKER <i>the sign of happiness...</i></body></html>";
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



    public SqlDataReader userresult(string qry)
    {
        SqlConnection con3 = new SqlConnection(con_string);
        SqlCommand cmd3 = new SqlCommand(qry, con3);
        con3.Open();
        SqlDataReader rd = cmd3.ExecuteReader();
        return rd;
        con3.Close();
    }




    public SqlDataReader ngonameresult(string qry)
    {
        SqlConnection con4 = new SqlConnection(con_string);
        SqlCommand cmd4 = new SqlCommand(qry, con4);
        con4.Open();
        SqlDataReader rd = cmd4.ExecuteReader();
        return rd;
        con4.Close();
    }

    public string random()
    {
        string did = createid();
        if (did == "Same")
        {
            random();
            return "a";
        }
        else
            return did;
    }

    public string createid()
    {
        string did = DateTime.Today.Year.ToString() + DateTime.Today.Month.ToString() + DateTime.Today.Day.ToString();
        Random rn = new Random();
        int n = rn.Next(100, 99999);
        did = did + n.ToString();

        bool present = check_donate_id(did);
        if (present)
            return "Same";
        else
            return did;
    }

    public bool check_donate_id(string id)
    {
        SqlConnection con8 = new SqlConnection(con_string);
        string qry8 = "SELECT *FROM donate where donate_id='" + id + "'";
        SqlCommand cmd8 = new SqlCommand(qry8, con8);
        con8.Open();
        SqlDataReader rd = cmd8.ExecuteReader();
        if (rd.HasRows)
            return true;
        else
            return false;
        con8.Close();
    }

    public bool donatescrap(BELadminwork belad)
    {
        SqlConnection con6 = new SqlConnection(con_string);
        string qry6 = "INSERT INTO donate VALUES(@did,@dtn,@dtid,@dfn,@dfe,@dfa,@dfm,@dst,@dc,@dt,@ds)";
        SqlCommand cmd6 = new SqlCommand(qry6, con6);
        cmd6.Parameters.AddWithValue("@did", belad.DONATE_ID);
        cmd6.Parameters.AddWithValue("@dtn", belad.DONATE_TO_NAME);
        cmd6.Parameters.AddWithValue("@dtid", belad.DONATE_TO_ID);
        cmd6.Parameters.AddWithValue("@dfn", belad.DONATE_FROM_NAME);
        cmd6.Parameters.AddWithValue("@dfe", belad.DONATE_FROM_EMAIL);
        cmd6.Parameters.AddWithValue("@dfa", belad.DONATE_FROM_ADDRESS);
        cmd6.Parameters.AddWithValue("@dfm", belad.DONATE_FROM_MOBILENO);
        cmd6.Parameters.AddWithValue("@dst", belad.DONATE_SCRAP_TYPE);
        cmd6.Parameters.AddWithValue("@dc", belad.DONATE_CITY);
        cmd6.Parameters.AddWithValue("@dt", belad.DONATE_TIME);
        cmd6.Parameters.AddWithValue("@ds", belad.DONATE_STATUS);

        con6.Open();
        int g = cmd6.ExecuteNonQuery();
        if (g != 0)
            return true;
        else
            return false;
    }


    public SqlDataReader ngonameid(string ngoname)
    {
        SqlConnection con5 = new SqlConnection(con_string);
        string qry5 = "Select ngo_registration_id FROM ngo_details WHERE ngo_name=@nname";
        SqlCommand cmd5 = new SqlCommand(qry5, con5);
        cmd5.Parameters.AddWithValue("@nname", ngoname);
        con5.Open();
        SqlDataReader rd5 = cmd5.ExecuteReader();
        return rd5;
     
    }


    public bool deletedonatedata(string id)
    {

        SqlConnection con11 = new SqlConnection(con_string);
        string qry11 = "DELETE donate WHERE donate_id=@did";
        SqlCommand cmd11 = new SqlCommand(qry11, con11);
        cmd11.Parameters.AddWithValue("@did", id);
        con11.Open();
        int g = cmd11.ExecuteNonQuery();
        con11.Close();
        if (g != 0)
            return true;
        else
            return false;
        con11.Close();

    }



    public bool changetoaccepted(string did)
    {
        SqlConnection con111 = new SqlConnection(con_string);
        string qry111 = "UPDATE donate SET donate_status='ACCEPTED' WHERE donate_id='" + did + "'";
        SqlCommand cmd111 = new SqlCommand(qry111, con111);
        con111.Open();
        int g = cmd111.ExecuteNonQuery();
        con111.Close();
        if (g != 0)
            return true;
        else
            return false;
        con111.Close();
    }
}