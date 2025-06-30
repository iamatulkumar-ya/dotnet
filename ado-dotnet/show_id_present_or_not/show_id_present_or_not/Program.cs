using System;
using System.Data.SqlClient;
using System.Data;
                                           //   program to show id is present or not with the help of stored procedure
namespace show_id_present_or_not
{
    class Program
    {
        static void Main()
        {
            
            string con_string = "data source=ASUS\\BABU;initial catalog=adodb;integrated security=true";
            SqlConnection con = new SqlConnection(con_string);
            SqlCommand cmd = new SqlCommand("Show", con);
            cmd.CommandType = CommandType.StoredProcedure;
           Console.WriteLine("Enter the Id please");
           cmd.Parameters.AddWithValue("@id",int.Parse(Console.ReadLine()));

           cmd.Parameters.Add("@msg",SqlDbType.NVarChar, 50);                    // tells the direction of message
           cmd.Parameters["@msg"].Direction = ParameterDirection.Output;
           con.Open();
           cmd.ExecuteNonQuery();
           con.Close(); 
           string msg=cmd.Parameters["@msg"].Value.ToString();      // convert msg into string
           Console.WriteLine(msg);
        }
    }
}
