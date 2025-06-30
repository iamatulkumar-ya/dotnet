using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    BALWork bal = new BALWork();
    BELWork bel = new BELWork();
    protected void Page_Load(object sender, EventArgs e)
    {
        update.Enabled = false;
        msg.Text = "";
        
    }
    protected void insert_Click(object sender, EventArgs e)
    {
        bel.ID = int.Parse(idbox.Text);
        bel.NAME = namebox.Text;                   // Here Name is the string type property name in Belworks, and namebox is the id of textbox          // 
        bel.PASSWORD = passwordbox.Text;          // Here PASSWORD is the string type property name in Belworks, and passwordbox is the id of textbox  //
        bel.FLAG = "insert";                     // Here FLAG is the string type property name in Belworks, that contains insert, delete ,update etc. //
        int g = bal.callinsertdata(bel);        // bal.callinsertdata, calls method that are present in BALwork, and containg property in bel.       //
        if(g!=0)
        {
            msg.Text = "Data inserted";
            insert.Enabled = false;
        }
        else
        {
            msg.Text = "Id Already existing";
        }

        idbox.Text = "";
        namebox.Text = "";
        passwordbox.Text = "";
        
       


    }
    protected void update_Click(object sender, EventArgs e)
    {
        bel.ID = int.Parse(idbox.Text);
        bel.NAME = namebox.Text;
        bel.PASSWORD = passwordbox.Text;
        bel.FLAG = "update";
        int g = bal.callupdatedata(bel);
        if (g != 0)
        {
            msg.Text = "Data Updated";
            idbox.Text = "";
            namebox.Text = "";
            passwordbox.Text = "";
            idbox.Enabled = true;
            insert.Enabled = true;
            update.Enabled = false;
        }
        else
        {
            msg.Text = "Oopsss!...Something Went wrong";
        }
    }
    protected void show_Click(object sender, EventArgs e)
    {
        bel.ID = int.Parse(enteridbox.Text);
        bel.FLAG = "show";
        DataTable dt = bal.callshowdata(bel);
        if(dt.Rows.Count>0)
        {
            foreach(DataRow dr in dt.Rows)
            {
                idbox.Text = dr[0].ToString();
                namebox.Text = dr[1].ToString();
                passwordbox.Text = dr[2].ToString();
            }
            enteridbox.Text = "";
            idbox.Enabled = false;
            idbox.Enabled = false;
            insert.Enabled = false;
            update.Enabled = true;
        }
        else
        {
            msg.Text = "Sorry....No Daat Found";
        }
    }
    protected void delete_Click(object sender, EventArgs e)
    {
        bel.ID = int.Parse(enteridbox.Text);
        bel.NAME = namebox.Text;
        bel.PASSWORD = passwordbox.Text;
        bel.FLAG = "delete";
        int g = bal.calldeletedata(bel);
        if (g != 0)
        {
            msg.Text = "Data Deleted";
            enteridbox.Text = "";
        }
        else
        {
            msg.Text = "Wrong id";
        }
    }
}