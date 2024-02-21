using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class databasname : System.Web.UI.Page
{
    string con_string = "data source=asus\\babu;integrated security=true";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(con_string);
            SqlCommand cmd = new SqlCommand("sp_databases", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            //GridView1.DataSource = rd;
            //GridView1.DataBind();

            DropDownList1.DataSource = rd;
            DropDownList1.DataTextField = "DATABASE_NAME";
            DropDownList1.DataValueField = "DATABASE_NAME";
            DropDownList1.DataBind();
            con.Close();
        }
    }
}