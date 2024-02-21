using System;
using System.Data;
using System.Data.SqlClient;

namespace disconnected_update      // program to update a table (pre primary key is set on id)
{
    class Program
    {
        static void Main()
        {
            string con_string = "data source=asus\\babu;initial catalog=work;integrated security=true";
            string qry="select *from fruit";
            SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
            SqlCommandBuilder bd = new SqlCommandBuilder(ad);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            Console.WriteLine("Enter row number for updation");
            int rn = int.Parse(Console.ReadLine());
            DataRow dr = dt.Rows[rn - 1];
            Console.WriteLine("Enter name");
            dr[1] = Console.ReadLine();
            int g = ad.Update(dt);           
            if (g != 0)
            Console.WriteLine("Data updated");
            
        }
    }
}
