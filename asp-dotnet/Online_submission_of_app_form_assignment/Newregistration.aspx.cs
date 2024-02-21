using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    static int cid;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.citybox.Text = DropDownList1.SelectedItem.Value.ToString();
        string qry1 = "Select *from citystate_details where City_name=@cityname";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OSOAFormConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand(qry1, con);
        cmd.Parameters.AddWithValue("@cityname", citybox.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            while (rd.Read())
            {
                cid = int.Parse(rd[2].ToString());
            }
        }
        con.Close();
        string qry2 = "select State_name from citystate_details where State_number=" + cid;
        SqlDataAdapter ad2 = new SqlDataAdapter(qry2, ConfigurationManager.ConnectionStrings["OSOAFormConnectionString"].ConnectionString);
        DataTable dt2 = new DataTable();
        ad2.Fill(dt2);
        foreach (DataRow dr2 in dt2.Rows)
        {
            statebox.Text = dr2[0].ToString();
        }
    }
    protected void register_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile)
        {
            string ex = Path.GetExtension(FileUpload1.FileName);
            
            if(ex==".jpeg" || ex==".jpg")
            {
                string image_path = "~/user_images/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(image_path));
                SqlDataSource1.InsertParameters["image_path"].DefaultValue = image_path;
            }
            else
            {
                imgmsg.Text = "(Plese Select Only .jpeg or .jpg image file)";
            }
        }
        imgmsg.Text = "Please choose an image";

        int g = SqlDataSource1.Insert();
        if(g!=0)
        {
            Response.Redirect("~/successregistration.aspx");
            Response.Cookies["pass"].Value = passwordbox.Text;
        }
        else
        {
            pagemsg.Text = "ooops... Something went wrong";
        }
    }
}