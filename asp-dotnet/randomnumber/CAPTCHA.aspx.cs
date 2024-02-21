using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Text;
using System.Drawing.Design;



public partial class _Default : System.Web.UI.Page
{
    string txt;
    string cp;
    int[] a = new int[5];
    int ab; int sum;
  
    protected void Page_Load(object sender, EventArgs e)
    {

        Label8.Text = "909&#71&#65";  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        //int n, rem, i;

        //Random rn1 = new Random();
        //int gn1 = rn1.Next(100, 1000);    // number position 1r
        //n = gn1;
        //i = 0;
        //while (n != 0)
        //{
        //    rem = n % 10;
        //    a[i] = rem;
        //    i++;
        //    n = n / 10;
        //}

        Random rn1 = new Random();
        int gn1 = rn1.Next(100, 999);    // alphabet position 1
        a[0] = gn1;

        Random rn2 = new Random();
        int gn2 = rn2.Next(65, 90);    // alphabet position 2
        a[1] = gn2;

        Random rn3 = new Random();
        int gn3 = rn3.Next(97,122);    // alphabet position 3
        if (gn3 >= 97 && gn3 <= 100)
        {
            gn3 = gn3 - 13;
            a[2] = gn3;

        }
        else
        {
            gn3 = gn3 - 4;
        }

        Random rn4 = new Random();
        int gn4 = rn4.Next(97, 122);    // alphabet position 4
        if(gn4>=97 && gn4<=102)
        {
           gn4  = gn4 - 14;
           a[3] = gn4;

        }
        else
        {
            gn4 = gn4 - 6;
            a[3] = gn4;
        }
        
        


        //Random rn4 = new Random();
        //int gn4 = rn4.Next(65, 90);    // alphabet position 4
        //a[3] = gn4;

        ////Random rn5 = new Random();
        ////int gn5 = rn5.Next(65, 90);    // alphabet position 5
        ////a[4] = gn5;

        //Random rn5 = new Random();
        //int gn5 = rn5.Next(97, 122);      // alphabet position 5
        //if (gn5 >= 97 && gn5 <= 103)
        //{
        //    gn5 = gn5 - 14;
        //    a[4] = gn5;

        //}
        //else
        //{
        //    gn5 = gn5 - 6;
        //    a[4] = gn5;
        //}

        Label1.Text = gn1.ToString();
        Label2.Text = "&#" + gn2.ToString();
        Label3.Text = "&#" + gn3.ToString();
        Label4.Text = "&#" + gn4.ToString();


        cpt.Text = Label1.Text.ToString() + Label2.Text.ToString() + Label3.Text.ToString() + Label4.Text.ToString();
     

        int total = gn1 + gn2 + gn3 + gn4;
        string fc = gn1.ToString() + gn2.ToString() + gn3.ToString() + gn4.ToString();
        Label1.Text = fc;
        Label2.Text = gn1.ToString();
        Label4.Text = total.ToString();

        string s1 = total.ToString();
        Label3.Text = s1;
       
        foreach(char c1 in s1)
        {
            ab += (int)c1;
            Response.Write((int)c1+" ");
        }
        Label10.Text = ab.ToString();
        Label5.Text = cpt.Text.ToString();

       

       
        
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        string[] y = TextBox1.Text.Split();
        foreach (string yx in y)
        {
            Label9.Text = yx;
        }

        if(TextBox1.Text.Equals(string.Empty))
        {
            Label6.Text="kuch bharo to";
        }
        else
        {

            Label7.Text = TextBox1.Text.ToString();

        if (TextBox1.Text==Label5.Text)
        {
            Label6.Text = "welcome";
        }
        else
        {
            Label6.Text = "sorry";
        }

        }

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        string s = TextBox2.Text;
     


        test.Text = s;
        foreach (char c in s)
        {
            sum += (int)c;
            Response.Write((int)c);

        }

        outp.Text = sum.ToString();



        //string one = "1";
        //outp.Text = "&#" + one;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Random rn1 = new Random();
        int gn1 = rn1.Next(89,91);
        Label11.Text = "&#"+gn1.ToString();
      
    }
}