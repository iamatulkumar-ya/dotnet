using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{

    static DataTable dt = new DataTable();
   
           
    protected void Page_Load(object sender, EventArgs e)
    {



        if (!IsPostBack)
        {

            dt.Columns.Add("id", typeof(Int32));
            dt.Columns.Add("name", typeof(string));
            dt.Columns.Add("password", typeof(string));
        }
        
     

       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        DataRow dr = dt.NewRow();
        dr["id"] = int.Parse(TextBox1.Text);
        dr["name"] = TextBox2.Text;
        dr["password"] = TextBox3.Text;

      

        dt.Rows.Add(dr);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
       
       


    }
    protected void Button2_Click(object sender, EventArgs e)
    {



        string con_string = "data source=gunnu;initial catalog=lko;integrated security=true";
        string qry = "select *from login";
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        SqlCommandBuilder bd = new SqlCommandBuilder(ad);
        ad.InsertCommand = bd.GetInsertCommand();
        ad.Update(dt);
          
       
    }
}