using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach(GridViewRow gr in GridView1.Rows)
        {
            CheckBox chk = (CheckBox)gr.FindControl("CheckBox2");
            if(chk.Checked)
            {
                object x = GridView1.DataKeys[gr.RowIndex].Value;
                SqlDataSource1.DeleteParameters["id"].DefaultValue = x.ToString();
                SqlDataSource1.Delete();
            }
        }

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chkm = (CheckBox)sender;
        foreach(GridViewRow gr in GridView1.Rows)
        {
            CheckBox chk = (CheckBox)gr.FindControl("CheckBox2");
            if(chkm.Checked)
            {
                chk.Checked = true;
            }
            else
            {
                chk.Checked = false;
            }
        }

    }
}