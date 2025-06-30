using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class adddata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {
        if(Session["table"]==null)          // first time execution this will be true
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("id", typeof(int));
            dt.Columns.Add("name", typeof(string));
            dt.Columns.Add("password", typeof(string));
            DataColumn[] pk = new DataColumn[1];
            pk[0] = dt.Columns["id"];
            dt.PrimaryKey = pk;
            DataRow dr = dt.NewRow();
            dr["id"] = int.Parse(TextBox1.Text);
            dr["name"] = TextBox2.Text;
            dr["password"] = TextBox3.Text;
            dt.Rows.Add(dr);
            Session["table"] = dt;
        }
        else if(Session["table"]!=null)
        {
            DataTable dt = (DataTable)Session["table"];
            DataRow dr = dt.NewRow();
            dr["id"] = int.Parse(TextBox1.Text);
            dr["name"] = TextBox2.Text;
            dr["password"] = TextBox3.Text;
            dt.Rows.Add(dr);
            Session["table"] = dt;

        }
        TextBox1.Text = string.Empty;
        TextBox2.Text = string.Empty;
        TextBox3.Text = string.Empty;
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        
        string con_sttring = "data source=asus\\babu;initial catalog=aspdb;integrated security=true";
        SqlConnection con = new SqlConnection(con_sttring);
        con.Open();

         //in case of creating stored procedure and type

        //SqlCommand cmd = new SqlCommand("insertAlldata", con);                                  
        //SqlParameter p = cmd.Parameters.AddWithValue("@id", (DataTable)Session["table"]);
        //p.SqlDbType = SqlDbType.Structured;
        //cmd.CommandType = CommandType.StoredProcedure;
        //cmd.ExecuteNonQuery();
        //con.Close();

        SqlBulkCopy s=new SqlBulkCopy(con);
        s.DestinationTableName="login";
        s.WriteToServer((DataTable)Session["table"]);
        Label1.Text = "all rows inserted";
        s.Close();
        con.Close();
    }
}