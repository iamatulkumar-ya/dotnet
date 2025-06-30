using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

                                                      // program for showing all data of table "tab1" 
namespace data_show_from_table
{
    class show
    {
        static void Main()
        {
            string con_string = "data source=ASUS\\BABU; initial catalog=adodb; integrated security=true";   // variable               server name          database name
            SqlConnection con = new SqlConnection(con_string);         // connection established with variable name "con"

            string qry = "select *from tab1";                         //  query

            SqlCommand cmd = new SqlCommand(qry,con);                // cmd must contains all details about query and connection
            // OR
            // SqlCommand cmd = new SqlCommand();
            // cmd.Connection = con;
            // cmd.CommandText = qry;                   line for text means query

            con.Open();     // connection open
            SqlDataReader rd = cmd.ExecuteReader();       // variable rd holds "query"   and   ExecuteReader is used for reading data without returns output 
                                                         // sqldatareader is a return type of Executereader

            Console.WriteLine(rd.GetName(0) + "\t" + rd.GetName(1) + "\t" + rd.GetName(2)); 
            // 0,1,2 defines the index of columns in table tba1  and GetName gets the name of columns corresponding to the inbdex

            if(rd.HasRows)          // HasRow...... checks data is present or not
            {
                while(rd.Read())   // Read(),reads each row
                {
                    Console.Write(rd[0]+"\t");   
                    Console.Write(rd[1]);
                    Console.Write(rd[2]);
                    Console.WriteLine();
                }

             }
            else
                Console.WriteLine("Sorry Table Does't Contains any data");


            con.Close();     // connection close
       }           
   }
}
