using System;
using System.Data;
using System.Data.SqlClient;

namespace Disconnected_model         // pure disconnected model because it using only select operation   no need to open or close the connection
{
    class Program
    {
        static void Main()
        {
            string con_string = "data source=ASUS\\BABU;initial catalog=adodb;integrated security=true";
            string qry = "select *from record";
            SqlDataAdapter ad=new SqlDataAdapter(qry,con_string);     // ad holds connection string and query
            DataTable dt = new DataTable();                     // datatable is used to display data of one table 
            ad.Fill(dt);                                 // ad fill the table into dt including schema as well
            Console.WriteLine(dt.Columns[0] + "\t" + dt.Columns[1] + "\t\t" + dt.Columns[2]);
            Console.WriteLine();
            if (dt.Rows.Count > 0)       // dt.Rows takes all rows present in table and count, counts the number of rows
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    Console.Write(dt.Rows[i][0]+"\t");
                    Console.Write(dt.Rows[i][1]);
                    Console.Write(dt.Rows[i][2]);
                    Console.WriteLine();
                }
            }
            else
            {
                Console.WriteLine("No data");
            }
        }
    }
}
