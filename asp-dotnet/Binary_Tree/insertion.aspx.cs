using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class insertion : System.Web.UI.Page
{
    int rootnode, leftchild, rightchild, info, count = 0, i;
    int[] arr = new int[999];
    protected void Page_Load(object sender, EventArgs e)
    {
        msg.Text = "";
      
    }
    protected void rootbutton_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals(string.Empty))
            msg.Text = "Please Enter a value";
        else
        {
            count++;
            info = int.Parse(TextBox1.Text);
            arr[0] = info;
            rootnode = info;
            rootn.Text = rootnode.ToString();
            TextBox1.Text = "";
            rootbutton.Enabled = false;
            childbutton.Enabled = true;
        }
    }
    protected void childbutton_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Equals(string.Empty))
            msg.Text = "please enter a value";
        else
        {
            count++;
            //info = int.Parse(TextBox1.Text);
            //if (info == rootnode)
            //    msg.Text = "You entered same value";
            //if (info < rootnode)        // rootnode is greater than info
            //{
            //    arr[1] = info;

            //}

            int pos = position();
            arr[pos] = info;
            if (pos % 2 == 0)
                even.Text = arr[pos].ToString();
            else
                odd.Text = arr[pos].ToString();
        }
    }

    public int position()
    {

        info = int.Parse(TextBox1.Text);

        for (i = 0; i <= count-1; )
        {
            if (info < arr[i])
                i += 1;
            else
                i += 2;          
        }
            return i;


    }
}