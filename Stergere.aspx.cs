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

    protected void Page_Load(object sender, EventArgs e)
    {
        Button3.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Label5.Text = "";
            conn = new OracleConnection("DATA SOURCE=localhost:1521/XE;PASSWORD=student;PERSIST SECURITY INFO=True;USER ID=ABI");
            conn.Open();
            str = "SELECT * FROM salarii where NUME=" + "'" + TextBox1.Text + "'" + "and PRENUME=" + "'" + TextBox2.Text + "'";
            cmd = new OracleCommand(str, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            da = new OracleDataAdapter(str, conn);
            ds = new DataSet();
            da.Fill(ds, "salarii");

            //Daca s-a gasit o linie
            if (ds.Tables[0].Rows.Count != 0)
            {
                Label6.Text = "";
                Button3.Visible = true;
            }
            else
            {
                Label6.Text = "Persoana cautata nu exista!";
            }

            //Afisare in gridview
            GridView1.DataSource = ds.Tables["salarii"].DefaultView;
            GridView1.DataBind();

        }
        catch (Exception ex)
        {
            Label4.Text = "Introduceti parametrii de cautare!";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        catch(Exception ex)
        {
            Label6.Text = "Error";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            //Sterg eventuala eroare anterioara
            Label4.Text = " ";
            conn = new OracleConnection("DATA SOURCE=localhost:1521/XE;PASSWORD=student;PERSIST SECURITY INFO=True;USER ID=ABI");
            conn.Open();
            str = "DELETE from salarii where NUME=" + "'" + TextBox1.Text + "'" + "and PRENUME=" + "'" + TextBox2.Text + "'";
            cmd = new OracleCommand(str, conn);
            cmd.ExecuteNonQuery();
            Label5.Text = "Angajat sters cu succes!";
            conn.Close();

            //Afisare tabela
            str = "SELECT * from salarii";
            da = new OracleDataAdapter(str, conn);
            ds = new DataSet();
            da.Fill(ds, "salarii");
            GridView1.DataSource = ds.Tables["salarii"].DefaultView;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Label4.Text = "Eroare";
        }
    }
}