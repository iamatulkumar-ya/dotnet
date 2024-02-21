using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class ProductDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
       
        string con_string = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string qry =string.Format("SELECT  *FROM [Products] WHERE ([ProductID] ={0})",Request.QueryString["ProductID"]);
       
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);

        DataTable dt = new DataTable();
        ad.Fill(dt);
      
        if (Session["MyTable"]==null)
        {
            

            DataTable dt1 = new DataTable();


            dt1.Columns.Add("ProductID", typeof(decimal));
            DataColumn[] pr = new DataColumn[1];
            pr[0] = dt1.Columns["ProductID"];
            dt1.PrimaryKey = pr;


          
           
            dt1.Columns.Add("ImageUrl", typeof(string));
            dt1.Columns.Add("ProductName", typeof(string));
            dt1.Columns.Add("Quantity", typeof(int));
            dt1.Columns.Add("Price", typeof(int));
            dt1.Columns.Add("SubTotal", typeof(int));
            DataRow dr1 = dt1.NewRow();
            foreach (DataRow dr in dt.Rows)
            {

                dr1["ProductID"] = dr[0];
                dr1["ImageUrl"] = dr[4];
                dr1["ProductName"] = dr[1];
                dr1["Quantity"] = 1;
                dr1["Price"] = dr[3];
                dr1["SubTotal"] = dr[3];
                dt1.Rows.Add(dr1);


            }
            DataSet ds = new DataSet();
            ds.Tables.Add(dt1);
            Session["MyTable"] = ds;
        }
        else if (Session["MyTable"] != null)
        {
           
            DataSet ds1 = (DataSet)Session["MyTable"];
            DataTable dt2 = ds1.Tables[0];
            DataRow drr = dt2.Rows.Find(Request.QueryString["ProductID"]);
           

            if (drr != null)
            {
                int q = (int)drr[3];

                q = q + 1;
                drr[3] = q;
                drr[5] = q * (int)drr[4];

            }
            else
            {
                DataRow dr1 = dt2.NewRow();
                foreach (DataRow dr in dt.Rows)
                {

                    dr1["ProductID"] = dr[0];
                    dr1["ImageUrl"] = dr[4];
                    dr1["ProductName"] = dr[1];
                    dr1["Quantity"] = 1;
                    dr1["Price"] = dr[3];
                    dr1["SubTotal"] = dr[3];
                    dt2.Rows.Add(dr1);


                }
            }
         
            Session["MyTable"] = ds1;


        }
        Response.Redirect("~/Product.aspx");

        

       
       

    }
}