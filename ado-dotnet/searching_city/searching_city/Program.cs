using System;
using System.Data;
using System.Data.SqlClient;

namespace searching_city     // program to search city by entering a "key" where "key" is a pattern
{
    class Program
    {
        static void Main()
        {
            string con_string = "data source=ASUS\\BABU;initial catalog=adodb;integrated security=true";
            SqlConnection con = new SqlConnection(con_string);
            SqlCommand cmd = new SqlCommand("search", con);
            cmd.CommandType = CommandType.StoredProcedure;

            Console.WriteLine("Enter the searching pattern");
            cmd.Parameters.AddWithValue("@key", Console.ReadLine());

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            Console.WriteLine(rd.GetName(0) + "\t" + rd.GetName(1) + "\t\t\t" + rd.GetName(2));
            if(rd.HasRows)
            {
                while(rd.Read())
                {
                    Console.Write(rd[0]);
                    Console.Write("\t"+rd[1]);
                    Console.Write(rd[2]);
                    Console.WriteLine();
                }
            }
            else
            {
                Console.WriteLine("No city found");
            }

            con.Close();
        }
    }
}
