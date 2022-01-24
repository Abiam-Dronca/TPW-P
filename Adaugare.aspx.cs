using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using Oracle.Web;

public partial class Default2 : System.Web.UI.Page
{
    OracleConnection conn;
    OracleCommand cmd;
    OracleDataAdapter da;
    DataSet ds;
    string str;

    OracleParameter p1, p2, p3, p4, p5, p6, p7;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox6.Text = "0";
        TextBox7.Text = "0";
        TextBox8.Text = "0";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            
            conn = new OracleConnection("DATA SOURCE=localhost:1521/XE;PASSWORD=student;PERSIST SECURITY INFO=True;USER ID=ABI");
            conn.Open();
            p1 = new OracleParameter();
            p2 = new OracleParameter();
            p3 = new OracleParameter();
            p4 = new OracleParameter();
            p5 = new OracleParameter();
            p6 = new OracleParameter();
            p7 = new OracleParameter();
           
            
            p1.Value = TextBox2.Text;
            p2.Value = TextBox3.Text;
            p3.Value = TextBox4.Text;
            p4.Value = TextBox5.Text;
            p5.Value = TextBox6.Text;
            p6.Value = TextBox7.Text;
            p7.Value = TextBox8.Text;
          

            str = "insert into salarii(NUME,PRENUME,FUNCTIE,SALAR_BAZA,SPOR,PREMII_BRUTE,RETINERI) values(:1,:2,:3,:4,:5,:6,:7)";
            cmd = new OracleCommand(str, conn);

            cmd.Parameters.Add(p1);
            cmd.Parameters.Add(p2);
            cmd.Parameters.Add(p3);
            cmd.Parameters.Add(p4);
            cmd.Parameters.Add(p5);
            cmd.Parameters.Add(p6);
            cmd.Parameters.Add(p7);

            cmd.ExecuteNonQuery();
            conn.Close();
            Label9.Text = "S-a adaugat!";

            str = "SELECT * FROM salarii where NUME=" + "'" + TextBox2.Text + "'";
            da = new OracleDataAdapter(str, conn);
            ds = new DataSet();
            da.Fill(ds, "salarii");

            // Afisare date in DDataGrid
            GridView1.DataSource = ds.Tables["salarii"].DefaultView;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Label9.Text = "error" + ex.ToString();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "0";
        TextBox7.Text = "0";
        TextBox8.Text = "0";
    }
}