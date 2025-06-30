using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Web;
using System.Data.SqlClient;

namespace lms
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string con_string="data source=asus\\babu; initial catalog=aspdb;integrated security=true";
            string qry = "select *from login";
            SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            dataGridView1.DataSource = dt;

         
            
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            
        }

        private void linkLabel1_MouseClick(object sender, MouseEventArgs e)
        {
            linkLabel1.DataBindings = Form2.cs;
        }
    }
}
