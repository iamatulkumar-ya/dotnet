﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data.SqlClient;
using System.Data;
public partial class Default4 : System.Web.UI.Page
{
    string con_string = "Data Source=gunnu;initial catalog=empinfo;integrated security=true";
    public void showData()
    {

        string qry = "select *from login";
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        gr.DataSource = dt;
        gr.DataBind();
    }
    Button b;
    TextBox txt;
    Label lb1;
    Label lb2;
    GridView gr;
    protected void Page_Load(object sender, EventArgs e)
    {
        gr = new GridView();
        gr.AutoGenerateDeleteButton = true;
        gr.AutoGenerateEditButton = true;

        b = new Button();
        b.BackColor = Color.Blue;
        b.ForeColor = Color.White;
        b.BorderStyle = BorderStyle.Groove;
        b.BorderWidth = new Unit(5);
        b.Click += Button1_Click;
        b.Text = "Submit";
        lb1 = new Label();
        lb1.Text = "Enter name";
        lb2 = new Label();
        txt = new TextBox();
        Panel1.Controls.Add(lb1);
        Panel1.Controls.Add(txt);
        Panel1.Controls.Add(b);
        Panel1.Controls.Add(lb2);
        Panel1.Controls.Add(gr);
        if(!IsPostBack)
        {
            showData();
        }

      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lb2.Text = txt.Text;
    }
}