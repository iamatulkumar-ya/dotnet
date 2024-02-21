using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace E_mail
{
    public partial class e_mail : Form
    {
        int i,m,r;
        public e_mail()
        {
            InitializeComponent();
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if(textBox1.Text.Equals(string.Empty))
            {
                timer1.Stop();
                eliminated el = new eliminated();
                this.Hide();
                el.Show();
            }
            else
            {
                timer1.Stop();
                success sc = new success();
                this.Hide();
                sc.Show();
            }
        }

        private void e_mail_Load(object sender, EventArgs e)
        {
            label2.Text = "";
            timer1.Stop();
            linkLabel1.Enabled = false;
            textBox1.Enabled = false;
        }

      

        private void timer1_Tick(object sender, EventArgs e)
        {
            i -= 1;
            if(i==0)
            {
                i = 480;
                timer1.Stop();
                eliminated el = new eliminated();
                this.Hide();
                el.Show();
            }
            else
            {
                m = i / 60;
                r = i % 60;
                label2.Text = m.ToString() + " " + ":" + " " + r.ToString();
            }

        }

        private void linkLabel2_LinkClicked_1(object sender, LinkLabelLinkClickedEventArgs e)
        {
            i = 480;
            linkLabel1.Enabled = true;
            textBox1.Enabled = true;
            timer1.Start();
        }
    }
}
