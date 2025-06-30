using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

/// <summary>
/// Summary description for DALuserlogin
/// </summary>
public class DALuserlogin
{
    string mb;
    string username;
    string userimage;

    string changepassusername;

    string con_string = ConfigurationManager.ConnectionStrings["jokerstring"].ConnectionString;
	public SqlDataReader checkusername(BELuserlogin bel)
	{       
        string qry0 = "select *from user_details where user_email=@uemail";
        SqlConnection con0 = new SqlConnection(con_string);
        SqlCommand cmd0 = new SqlCommand(qry0, con0);
        cmd0.Parameters.AddWithValue("@uemail", bel.USERNAME);
        con0.Open();
        SqlDataReader rd = cmd0.ExecuteReader();
        if (rd.HasRows)                              // means E-mail is present or regestered
        {
            return rd;
            //while (rd.Read())
            //{
            //     username = rd[0].ToString();
            //     userimage = rd[9].ToString();
            //}
            //return username;
        }
        else
        {
            rd = null;
            return rd;
        }
        con0.Close();
	}


    public bool checkuserpassword(BELuserlogin bel)
    {
        string qry1 = "Select *from user_details where user_email=@uemail AND user_password=@upassword";
        SqlConnection con1 = new SqlConnection(con_string);
        SqlCommand cmd1 = new SqlCommand(qry1, con1);
        cmd1.Parameters.AddWithValue("@uemail", bel.USERNAME);
        cmd1.Parameters.AddWithValue("@upassword", bel.USERPASSWORD);
        con1.Open();
        SqlDataReader rd1 = cmd1.ExecuteReader();
        if (rd1.HasRows)
            return true;
        else
            return false;
        con1.Close();
    }

    public SqlDataReader checkuseremail(string email)    // for FORGOTPASSWORD.ASPX
    {
        
        string qry2 = "select *from user_details where user_email=@uemail";
        SqlConnection con2 = new SqlConnection(con_string);
        SqlCommand cmd2 = new SqlCommand(qry2, con2);
        SqlCommand cm2 = new SqlCommand(qry2, con2);
        cmd2.Parameters.AddWithValue("@uemail", email);
        con2.Open();
        SqlDataReader rd = cmd2.ExecuteReader();
        return rd;
        con2.Close();
    }


    public bool sendemail(string to_email, string password, string username)
    {

        MailMessage msg = new MailMessage();
        MailAddress frm = new MailAddress("atulyadav5566@gmail.com");    // sender's e-mail id
        msg.From = frm;
        MailAddress to = new MailAddress(to_email);           // receiver's e-mail id 
        msg.To.Add(to);
        msg.Subject = "Your JOKER Account Information";
        msg.Body = " <html><body><br>Hi <b>" + username + "</b>,<br><br>Welcome to <b>JOKER</b> <i>the sign of happiness...</i>,Please collect your Password below and continue your journey.<br><br><table width=100%><tr><td colspan=2 align=center height=60px bgcolor=lightblue><b>LOGIN USERNAME AND PASSWORD</b></td></tr><tr><td width=50%><b>Username:/Userid</b></td><td width=50% align=right><b>" + to_email + "</b></td></tr><tr><td width=50%><b>Password:</b></td><td width=50% align=right><b>" + password + "</b></td></tr></table><br><br> Thanks and Regards,<br><b>Admin</b><br>JOKER <i>the sign of happiness...</i></body></html>";
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


    public bool changepassword(string email,string newpass)
    {
        string qry3 = "update user_details set user_password=@password where user_email=@email";
        SqlConnection con3 = new SqlConnection(con_string);
        SqlCommand cmd3 = new SqlCommand(qry3, con3);
        cmd3.Parameters.AddWithValue("@password", newpass);
        cmd3.Parameters.AddWithValue("@email", email);
        con3.Open();
        int q = cmd3.ExecuteNonQuery();
        if (q != 0)
            return true;
        else
            return false;
        con3.Close();
    }

    public bool changepasswordsendemail(string email, string newpass)
    {
       
        SqlDataReader sdr = checkuseremail(email);
        if (sdr.HasRows)
        {
            while (sdr.Read())
            {
                changepassusername = sdr[0].ToString().Trim();
            }


            MailMessage msg = new MailMessage();
            MailAddress frm = new MailAddress("atulyadav5566@gmail.com");    // sender's e-mail id
            msg.From = frm;
            MailAddress to = new MailAddress(email);           // receiver's e-mail id 
            msg.To.Add(to);
            msg.Subject = "Regarding Changed Password";
            msg.Body = " <html><body><br>Hi <b>" + changepassusername + "</b>,<br><br>Welcome to <b>JOKER</b> <i>the sign of happiness...</i>, and thanks for connecting with us! It seems that you recently changed your password, and your new password is:.<br><br><table width=100%><tr><td colspan=2 align=center height=60px bgcolor=lightblue><b>LOGIN USERNAME AND PASSWORD</b></td></tr><tr><td width=50%><b>Username:/Userid</b></td><td width=50% align=right><b>" + email + "</b></td></tr><tr><td width=50%><b>Password:</b></td><td width=50% align=right><b>" + newpass + "</b></td></tr></table><br><br> <b> 'IF THIS EVENT DID NOT DONE BY YOU, THEN YOU CAN CONTACT US ON: +919026111881, atulyadav5566@gmail.com </b> <br><br> Thanks and Regards,<br><b>Admin</b><br>JOKER <i>the sign of happiness...</i></body></html>";
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
        else 
            return false;         // means no rows found


    }







    public SqlDataReader checkadmindetails(BELuserlogin bel)
    {
        string qry11 = "Select *from admin_details where admin_email=@aemail AND admin_password=@apassword";
        SqlConnection con11 = new SqlConnection(con_string);
        SqlCommand cmd11 = new SqlCommand(qry11, con11);
        cmd11.Parameters.AddWithValue("@aemail", bel.USERNAME);
        cmd11.Parameters.AddWithValue("@apassword", bel.USERPASSWORD);
        con11.Open();
        SqlDataReader rd11 = cmd11.ExecuteReader();
        return rd11;
       
        con11.Close();
    }


    public bool changeadminpassword(string email, string newpass)
    {
        string qry33 = "update admin_details set admin_password=@password where admin_email=@email";
        SqlConnection con33 = new SqlConnection(con_string);
        SqlCommand cmd33 = new SqlCommand(qry33, con33);
        cmd33.Parameters.AddWithValue("@password", newpass);
        cmd33.Parameters.AddWithValue("@email", email);
        con33.Open();
        int q = cmd33.ExecuteNonQuery();
        if (q != 0)
            return true;
        else
            return false;
        con33.Close();
    }




}