using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class UserCart : System.Web.UI.Page
{
    public void displayData()
    {
        if (Session["MyTable"]!= null)
        {
            grdCart.DataSource = (DataSet)Session["MyTable"];
            grdCart.DataBind();
           DataSet ds = (DataSet)Session["MyTable"];
           DataTable dt = ds.Tables[0];

           decimal totalSum = 0;
           foreach (DataRow dr in dt.Rows)
           {
               totalSum += Convert.ToDecimal(dr["SubTotal"]);

           }
           TotalLabel.Text = string.Format("Total Amount:{0:C}", totalSum);
        }
        else
        {
            grdCart.DataSource = null;
            grdCart.DataBind();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            displayData();
        }
       
    }
    protected void grdCart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdCart.EditIndex = e.NewEditIndex;
        displayData();
    }
    protected void grdCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdCart.EditIndex = -1;
        displayData();
    }
    protected void grdCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txt1 = (TextBox)grdCart.Rows[e.RowIndex].Cells[2].Controls[0];
        string priceString = grdCart.Rows[e.RowIndex].Cells[3].Text;
        string actualPrice = priceString.Remove(0, 1);

        decimal price = decimal.Parse(actualPrice.Trim());
        displayData();
        DataSet ds = (DataSet)grdCart.DataSource;
        ds.Tables[0].Rows[e.RowIndex]["Quantity"] = int.Parse(txt1.Text);
        ds.Tables[0].Rows[e.RowIndex]["SubTotal"] = price * int.Parse(txt1.Text);
        grdCart.EditIndex = -1;
        displayData();

    }
    protected void grdCart_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }
    protected void grdCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
         displayData();

         DataSet ds = (DataSet)grdCart.DataSource;
        ds.Tables[0].Rows[e.RowIndex].Delete();
        
        displayData();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        displayData();
        DataSet ds = (DataSet)grdCart.DataSource;
        Session["gdata"] = ds;
        Session["total"] = TotalLabel.Text;
        Session.RemoveAll();
        Session["MyTable"]= null;
        Session.Abandon();
        Response.Redirect("~/login.aspx");
        
    }
}