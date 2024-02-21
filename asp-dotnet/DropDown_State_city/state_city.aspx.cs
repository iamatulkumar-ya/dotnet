using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class state_city : System.Web.UI.Page
{
    int sn = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        string qry = "Select State_number from citystate_details where State_name=" + DropDownList1.SelectedItem.Value.ToString();
        SqlDataAdapter ad = new SqlDataAdapter(qry,ConfigurationManager.ConnectionStrings["OSOAFormConnectionString"].ConnectionString);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        foreach(DataRow dr in dt.Rows)
        {
            sn = int.Parse(dr[0].ToString());
        }

        string qry1 = "Select City_name from citystate_details where Category_id=" + sn;
 

        
    }
}