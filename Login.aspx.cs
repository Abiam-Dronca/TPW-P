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

    OracleConnection conn2;
    OracleDataReader dr;
    OracleCommand cmd2;
    OracleDataAdapter da;
    DataSet ds;
    string str2;
    string parola;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
        OracleConnection conn2 = new OracleConnection("DATA SOURCE = localhost:1521 / XE; PASSWORD = student; PERSIST SECURITY INFO = True; USER ID = ABI");

        string str2 = "Select * from procente";
        cmd2 = new OracleCommand(str2, conn2);
        conn2.Open();
        dr = cmd2.ExecuteReader();
        // Citire cate linii returneza Select...
        // while (dr.Read()) {...}
        
        dr.Read(); //citire o linie (prima linie returnata de Select)
        //Label8.Text = dr["PAROLA"].ToString();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string introdus = TextBox1.Text;
        try
        {
            if (introdus == dr["PAROLA"].ToString())
            {
                Server.Transfer("Procente.aspx");
                dr.Close();
                conn2.Close();

            }
            else
            {
                Label8.Text = "Parola introdusa este gresita!";
                TextBox1.Text = "";
            }
 
        }
        catch (Exception ex)
        {
            Label8.Text = "Eroare!"+ex.ToString();
        }
    }
}