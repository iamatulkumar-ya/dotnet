using System;
using System.Data;
using System.Data.SqlClient;

namespace money_transfer
{
    class Program
    {
        static void Main()
        {
            string con_string = "data source=ASUS\\BABU;initial catalog=adodb;integrated security=true";
            SqlConnection con = new SqlConnection(con_string);
            SqlCommand cmd = new SqlCommand("accountdetail", con);
            cmd.CommandType = CommandType.StoredProcedure;

            Console.WriteLine("Enter the account number from where you want to transfer"); 
            cmd.Parameters.AddWithValue("@from_acc",int.Parse(Console.ReadLine()));

            Console.WriteLine("Enter account number where you want to transfer");
            cmd.Parameters.AddWithValue("@to_acc", int.Parse(Console.ReadLine()));

            Console.WriteLine("Enter the amount in $");
            cmd.Parameters.AddWithValue("@from_amount", int.Parse(Console.ReadLine()));

            cmd.Parameters.Add("@msg", SqlDbType.NVarChar, 70);
            cmd.Parameters["@msg"].Direction = ParameterDirection.Output;

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            string msg = cmd.Parameters["@msg"].Value.ToString();
            Console.WriteLine(msg);
          

        }
    }
}
