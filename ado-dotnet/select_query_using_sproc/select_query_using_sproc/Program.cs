using System;
using System.Data;
using System.Data.SqlClient;

namespace select_query_using_query
{
    class Program
    {
        static void Main()
        {
            string con_string = "data source=asus\\babu;initial catalog=adodb;integrated security=true";
            SqlConnection con = new SqlConnection(con_string);
            string qry = "select *from login";
            SqlCommand cmd = new SqlCommand(qry, con);

            //SqlCommand cmd = new SqlCommand("selectdata", con);
            //cmd.CommandType = CommandType.StoredProcedure;                        in case of using stored procedure

            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();      // rd holds select query
            Console.Write(rd.GetName(0) + "\t" + rd.GetName(1) + "\t" + rd.GetName(2));
            Console.WriteLine(); Console.WriteLine();
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    Console.Write(rd[0]);
                    Console.Write("\t" + rd[1]);
                    Console.Write("\t" + rd[2]);
                    Console.WriteLine();
                }
            }
            else
                Console.WriteLine("Table doesn't contain any data");
            con.Close();
        }
    }
}
