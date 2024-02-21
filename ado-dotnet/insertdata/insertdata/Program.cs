using System;
using System.Data;
using System.Data.SqlClient;

namespace insertdata
{
    class Program
    {
        static void Main(string[] args)
        {
            string con_string = "data source=ASUS\\BABU;initial catalog=adodb;integrated security=true";
            SqlConnection con = new SqlConnection(con_string);
            SqlCommand cmd = new SqlCommand("insertdata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            Console.WriteLine("Enter the id");
            cmd.Parameters.AddWithValue("@id", int.Parse(Console.ReadLine()));
            Console.WriteLine("Enter the name");
            cmd.Parameters.AddWithValue("@name", Console.ReadLine());
            Console.WriteLine("Enter the password");
            cmd.Parameters.AddWithValue("@password", Console.ReadLine());
            con.Open();
            int g = cmd.ExecuteNonQuery();
            if (g != 0)
                Console.WriteLine("Data inserted");
            con.Close();
        }
    }
}
