using System;
using System.Data;
using System.Data.SqlClient;

namespace selectdata
{
    class Program
    {
        static void Main()
        {
            string con_string = "data source=ASUS\\BABU;initial catalog=adodb;integrated security=true";
            SqlConnection con = new SqlConnection(con_string);
            SqlCommand cmd = new SqlCommand("selectdata", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if(rd.HasRows)
            {
                while(rd.Read())
                {
                    Console.Write(rd[0]+"\t");
                    Console.Write(rd[1]);
                    Console.Write(rd[2]);
                    Console.WriteLine();
                }
            }
            else
            {
                Console.WriteLine("sorry no data");
            }
        }
    }
}
