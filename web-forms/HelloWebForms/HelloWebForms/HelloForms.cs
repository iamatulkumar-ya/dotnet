using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HelloWebForms
{
    public partial class HelloForms : Form
    {
        public HelloForms()
        {
            InitializeComponent();

            this.StartPosition = FormStartPosition.Manual;
            this.Location = new Point(Screen.PrimaryScreen.WorkingArea.Width - (this.Width+10),
                Screen.PrimaryScreen.WorkingArea.Height - (this.Height+10));
        }

         

        private void HelloForms_Load(object sender, EventArgs e)
        {
            
        }

        private void ok_Click(object sender, EventArgs e)
        {
            this.Close();
            //Form form = new Form1();
            //form.Close();
        }

        private void reminder_Click(object sender, EventArgs e)
        {
            //Form form = new Form1();
            //form.Close();
            this.Hide();

            Task wt = Task.Delay(5000);
            wt.Wait();
            this.Show(); 

        }

         


    }

 
 
}
