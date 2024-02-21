using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class captcha : System.Web.UI.Page
{

    static int gnsum, ensum;
    string n1, n2, n3, n4, n5, final, inpt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void generate_Click(object sender, EventArgs e)
    {
        gnsum = 0;
        Random rn1 = new Random();
        int gn1 = rn1.Next(0,100);                               // GeNERATED NUMBER 1
        n1 = gn1.ToString();

        Random rn2 = new Random();
        int gn2 = rn2.Next(0, 10);                               // GeNERATED NUMBER 2
        n2 = gn2.ToString();

        Random rn3 = new Random();
        int gn3 = rn3.Next(65, 90);                               // GeNERATED NUMBER 3
        n3 = "&#" + gn3.ToString();

        Random rn4 = new Random();
        int gn4 = rn4.Next(97, 122);
        if (gn4 >= 97 && gn4 <= 103)
        {
            gn4 = gn4 - 15;                               // GeNERATED NUMBER 4
             n4 = "&#" + gn4.ToString();
        }
                                        
        else
        {
            gn4 = gn4 - 5;                                // GeNERATED NUMBER 4
             n4 = "&#" + gn4.ToString();                                                         
        }
                          

        Random rn5 = new Random();
        int gn5 = rn5.Next(97, 122);
        if (gn5 >= 97 && gn5 <= 110)
        {
            gn5 = gn5 - 21;                          // GeNERATED NUMBER 5
            n5 = "&#" + gn5.ToString();   
        }
                             
        else
        {
             gn5 = gn5 - 10;                              // GeNERATED NUMBER 5
              n5 = "&#" + gn5.ToString();   
        }

        Random rn = new Random();
        int sequ = rn.Next(1, 6);

        if (sequ == 1)
            final = n1 + n2 + n3 + n4 + n5;

        if (sequ == 2)
            final = n1 + n2 + n4 + n3 + n5;

        if (sequ == 3)
            final = n1 + n2 + n3 + n5 + n4;

        if (sequ == 4)
            final = n1 + n2 + n5 + n4 + n3;

        if (sequ == 5)
            final = n1 + n2 + n5 + n3 + n4;


         cpt.Text = final;
         Label5.Text = final;

         string s = gn1.ToString() + gn2.ToString();

        foreach(char c in s)
        {
            gnsum += (int)c;
        }

        gnsum = gnsum + gn3 + gn4 + gn5;
        Label3.Text = gnsum.ToString();

    }
    protected void go_Click(object sender, EventArgs e)
    {
        ensum = 0;
        inpt = TextBox1.Text;
        foreach(char c in inpt)
        {
            ensum += (int)c;
        }
        Label4.Text = ensum.ToString();

        if (gnsum == ensum)
            msg.Text = "Welcome code has been matched";
        else
            msg.Text = "Sorry.......please try again";
    }
}