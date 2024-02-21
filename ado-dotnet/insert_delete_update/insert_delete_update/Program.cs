using System;
using System.Data;
using System.Data.SqlClient;

namespace insert_delete_update
{
    class Program
    {
        static void Main(string[] args)
        {
            string con_string = "data source=ASUS\\BABU;initial catalog=adodb;integrated security=true";
            SqlConnection con = new SqlConnection(con_string);
            SqlCommand cmd = new SqlCommand("operation", con);
            cmd.CommandType = CommandType.StoredProcedure;

            Console.WriteLine("*********** Menu ***********");
            Console.WriteLine("Press 1 for Display data");
            Console.WriteLine("Press 2 for Insertion");
            Console.WriteLine("Press 3 for Updation");
            Console.WriteLine("Press 4 for Deletion");
            int a=int.Parse(Console.ReadLine());
            //cmd.Parameters.AddWithValue("@a",Console.ReadLine());
            
            switch(a)
            { 
                case1:
                 {
                     cmd.Parameters.AddWithValue("@flag", 1);
                     cmd.Parameters.Add("@msg", SqlDbType.NVarChar, 50);
                     cmd.Parameters["@msg"].Direction = ParameterDirection.Output;
                     con.Open();
                     cmd.ExecuteNonQuery();
                     con.Close();
                     string msg = cmd.Parameters["@msg"].Value.ToString();
                     Console.WriteLine(msg);
                 }
                case2:
                 {
                     Console.WriteLine("Enter Id");
                     cmd.Parameters.AddWithValue("@id",Console.ReadLine());
                     Console.WriteLine("Enter Name");
                     cmd.Parameters.AddWithValue("@name",Console.ReadLine());
                     Console.WriteLine("Enter city name");
                     cmd.Parameters.AddWithValue("@city",Console.ReadLine());

                     cmd.Parameters.AddWithValue("@flag", 2);
                     cmd.Parameters.Add("@msg", SqlDbType.NVarChar, 50);
                     cmd.Parameters["@msg"].Direction = ParameterDirection.Output;
                     con.Open();
                     cmd.ExecuteNonQuery();
                     con.Close();
                     string msg = cmd.Parameters["@msg"].Value.ToString();
                     Console.WriteLine(msg);
                 }
            }
        }
    }
}

