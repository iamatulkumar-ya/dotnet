using System;
using System.Data;
using System.Data.SqlClient;

namespace disconnected_update_pk_at_app
{
    class Program
    {
        static void Main()
        {
            string con_string = "data source=asus\\babu;initial catalog=adodb;integrated security=true";
            string qry = "select *from login";
            SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
            SqlCommandBuilder bd = new SqlCommandBuilder(ad);
            DataTable dt = new DataTable();                     // dt stores the data of one table
            ad.Fill(dt);
            
            DataColumn[] pk = new DataColumn[1];           // tells that we want to create 1 column as a primary key
            pk[0] = dt.Columns["id"];                      // pk[0] holds the value of id
            dt.PrimaryKey = pk;                            // id is select as a primary key    """"""if we will not use it then it must me mention the row number
            
            Console.WriteLine("Enter id for updation");
            int id = int.Parse(Console.ReadLine());
            DataRow dr = dt.Rows.Find(id);              // find, finds the id is present or not
            if(dr!=null)
            {
                Console.WriteLine("Enter name for updation");
                dr["name"] = Console.ReadLine();
                Console.WriteLine("Enter password for updation");
                dr["password"] = Console.ReadLine();
                int g= ad.Update(dt);
                if (g != 0)
                    Console.WriteLine("Data updated");
            }
        }
    }
}
