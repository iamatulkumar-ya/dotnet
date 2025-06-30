using System;
using System.Runtime.InteropServices;
using Microsoft.Data.SqlClient;

namespace email_validation.Services;

public class EmailDetails{
    public string email { get; set; } = "";
    public string client { get; set; } = "";
    public string region { get; set; } = "";
}

public class DbServices
{
    const string connectionString = @"Data Source=DELLHOME\MSSQLSERVER01; Initial Catalog=email_validation; Trusted_Connection=True;TrustServerCertificate=True;";

    const string emailQuery = "SELECT * FROM emailDetails WHERE email in (@email1, @email2)";

    public List<EmailDetails> GetEmailDetails(string oldEmail, string newEmail)
    { 
        List<EmailDetails> emailDetailsList = new List<EmailDetails>();
        using (SqlConnection conn = new(connectionString))
        {
            SqlCommand sqlCommandcmd = new(emailQuery, conn); 
            sqlCommandcmd.Parameters.AddWithValue("@email1", oldEmail);
            sqlCommandcmd.Parameters.AddWithValue("@email2", newEmail);

            conn.Open();
            SqlDataReader reader = sqlCommandcmd.ExecuteReader();
            while (reader.Read())
            {
                EmailDetails emailDetails = new EmailDetails();
                emailDetails.email = (string)reader["email"];
                emailDetails.client = (string)reader["client"];
                emailDetails.region = (string)reader["region"]; 

                emailDetailsList.Add(emailDetails);
            }

            reader.Close(); 
        }

        return emailDetailsList;
    }
}