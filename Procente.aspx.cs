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
    OracleConnection conn1;
    OracleDataReader dr;
    OracleCommand cmd1;
    OracleDataAdapter da;
    DataSet ds;
    string str1;
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Label7.Text = "";
            Label9.Text = "";
            OracleConnection conn1 = new OracleConnection("DATA SOURCE = localhost:1521 / XE; PASSWORD = student; PERSIST SECURITY INFO = True; USER ID = ABI");
            str1 = "Update PROCENTE set PROCENT_CAS=" + TextBox4.Text + ",PROCENT_CASS=" + TextBox5.Text + ",PROCENT_IMPOZIT=" + TextBox6.Text;
            conn1.Open();
            cmd1 = new OracleCommand(str1, conn1);
            cmd1.ExecuteNonQuery();
            conn1.Close();
            Label8.Text = "MODIFICARE EFECTUATA CU SUCCES!";
        }
        catch (Exception ex)
        {
            Label7.Text = "Introduceti date numerice pozitive folosind punct in loc de virgula!";
        }
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            Label8.Text = "";
        }
        catch(Exception ex)
        {
            Label9.Text = "Eroare";
        }
    }
}