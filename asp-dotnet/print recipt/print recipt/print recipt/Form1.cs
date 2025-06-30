using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace print_recipt
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        SqlDataAdapter da;
        DataSet ds;
        SqlConnection con;
        private void button1_Click(object sender, EventArgs e)
        {
        con = new SqlConnection("data source=RAMASHANKER-PC;Integrated Security=Yes;Database=master");
 da = new SqlDataAdapter("insert into studentdetail1 values('" + textBox1.Text + "','" + textBox2.Text + "','" + textBox3.Text + "','" + textBox4.Text + "','" + textBox5.Text + "','" + textBox6.Text + "')", con);
            ds = new DataSet();
            da.Fill(ds);
            //MessageBox.Show("Fee has been successfully Submitted");



            Form2 f2 = new Form2();
            this.Hide();
            f2.label9.Text = textBox1.Text.ToString();
            f2.label10.Text = textBox2.Text.ToString();
            f2.label11.Text = textBox3.Text.ToString();
            f2.label12.Text = textBox4.Text.ToString();
            f2.label13.Text = textBox5.Text.ToString();
            f2.label14.Text = textBox6.Text.ToString();
            int n1 = int.Parse(textBox5.Text);
            int n2 = int.Parse(textBox6.Text);
            int total = n1 + n2;
            f2.label15.Text = total.ToString();
            f2.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form3 f3 = new Form3();
            this.Hide();
            f3.Show();
        }
    }
}
