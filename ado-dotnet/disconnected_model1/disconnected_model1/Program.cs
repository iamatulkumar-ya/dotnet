using System;
using System.Data;
using System.Data.SqlClient;

namespace disconnected_model1      // insert data into table by creating a new row of same schema as table, then enter data then insert into table
{
    class Program
    {
        static void Main()
        {
            string con_string = "Data source=ASUS\\BABU;initial catalog=adodb;integrated security=true";
            string qry="select *from login";
            SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
            SqlCommandBuilder bd = new SqlCommandBuilder(ad);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            DataRow dr = dt.NewRow();   // create new row stores in dr having same no. of columns
            Console.WriteLine("Enter id");
            dr[0] = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter name");
            dr[1] = Console.ReadLine();
            Console.WriteLine("Enter password");
            dr[2] = Console.ReadLine();
            dt.Rows.Add(dr);                               // add new row into the table 
            ad.InsertCommand = bd.GetInsertCommand();      // insert query but this is not need when a table have a primary key
            Console.WriteLine(bd.GetInsertCommand().CommandText);  // for showing that it generates insert query automaticaly in run time
            int g = ad.Update(dt);                            // tells that updation is occured or not
            if(g!=0)
            {
                Console.WriteLine("Data inserted");
            }

        }
    }
}
