using System;


namespace email_validation.Services;

public class ValidationService
{

    public string validateEmails(string ticketNumber, string oldEmail, string newEmail)
    {
        // creating instance of a DB service
        DbServices dbs = new DbServices();

        // fetching Email details for both emails
        List<EmailDetails> emailResponse = dbs.GetEmailDetails(oldEmail, newEmail); 

        // email validation cases
        if (emailResponse.Count == 0)
            return "Error: Both emails does not exist.";
        
        if (emailResponse.Count == 1)
        {
            if (emailResponse[0].email == oldEmail)
                return $"Error: {newEmail} email does not exist.";
            else
                return $"Error: {oldEmail} email does not exist.";

        }

        if (emailResponse.Count > 2)
            return "Error: Multiple records found.";
         
        if (emailResponse.Count == 2)
        // valid case
        {
            if (emailResponse[0].client.ToLower() != emailResponse[1].client.ToLower())
                return "Error: Old and New email are of different client.";

            if (emailResponse[0].region.ToLower() != emailResponse[1].region.ToLower())
                return "Error: Old and New email are from different region.";

            // all input is valid then we are good to perform Submit Action
            // ACTION 1  - Executing SP in Default Server
            bool defaultSPExecutionResponse = executeDefaultSP();

            // ACTION 2  - Executing SP in Region specific Server
            bool regionSpecificExecutionResponse = executeRegionSpecificSP();

            // ACTION 3  - Checking if email Exists in DB
            bool isEmailExists = checkEmailExist();

            if (isEmailExists)
            {
                bool updateExecutionResponse = executeUpdateQuery();

                // all success
                return "Document merge completed. Deactivation completed.";
            }

            else
            {
                return "Document merge completed. Old Profile not present in BT";
            }

        }
        
        return "Error: Unknown error occurred.";
    }

    public bool executeDefaultSP()
    {
        try 
        {
        return true;
        }

        catch (Exception ex)
        {
            Console.WriteLine($"Method::executeDefaultSP; Execption - {ex}");
            return false;
        }
    }

     public bool executeRegionSpecificSP()
    {
        try 
        {
        return true;
        }

        catch (Exception ex)
        {
            Console.WriteLine($"Method::executeRegionSpecificSP; Execption - {ex}");
            return false;
        }
    }

     public bool checkEmailExist()
    {
        try 
        {
        return true;
        }

        catch (Exception ex)
        {
            Console.WriteLine($"Method::checkEmailExist; Execption - {ex}");
            return false;
        }
    }

     public bool executeUpdateQuery()
    {
        try 
        {
        return true;
        }

        catch (Exception ex)
        {
            Console.WriteLine($"Method::executeUpdateQuery; Execption - {ex}");
            return false;
        }
    }
}