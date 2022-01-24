using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

public partial class Default2 : System.Web.UI.Page
{
    OracleConnection cn;
    OracleDataAdapter da;
    DataSet ds;
    String strSQL;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            cn = new OracleConnection("DATA SOURCE=localhost:1521/XE;PASSWORD=student;PERSIST SECURITY INFO=True;USER ID=ABI");
            strSQL = "SELECT * FROM salarii";
            da = new OracleDataAdapter(strSQL, cn);
            ds = new DataSet();
            da.Fill(ds, "salarii");

            ReportDocument raport = new ReportDocument();
            string cale = Server.MapPath("Raport_fluturasi.rpt");
            raport.Load(cale);
            raport.SetDataSource(ds.Tables["salarii"]);
            CrystalReportViewer2.ReportSource = raport;
        }
        catch (Exception ex)
        {
            Label3.Text = "error" + ex.ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            cn = new OracleConnection("DATA SOURCE=localhost:1521/XE;PASSWORD=student;PERSIST SECURITY INFO=True;USER ID=ABI");
            strSQL = "SELECT * FROM salarii where NUME=" + "'" + TextBox1.Text + "'" + "and PRENUME=" + "'" + TextBox2.Text + "'";
            da = new OracleDataAdapter(strSQL, cn);
            ds = new DataSet();
            da.Fill(ds, "salarii");
            GridView1.DataSource = ds.Tables["salarii"].DefaultView;
            GridView1.DataBind();

            ReportDocument raport = new ReportDocument();
            string cale = Server.MapPath("Raport_fluturasi.rpt");
            raport.Load(cale);
            raport.SetDataSource(ds.Tables["salarii"]);
            CrystalReportViewer1.ReportSource = raport;

           
        }
        catch (Exception ex)
        {
            Label3.Text = "error" + ex.ToString();
        }
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

 
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            cn = new OracleConnection("DATA SOURCE=localhost:1521/XE;PASSWORD=student;PERSIST SECURITY INFO=True;USER ID=ABI");
            strSQL = "SELECT * FROM salarii where NUME=" + "'" + TextBox1.Text + "'" + "and PRENUME=" + "'" + TextBox2.Text + "'";
            da = new OracleDataAdapter(strSQL, cn);
            ds = new DataSet();
            da.Fill(ds, "salarii");

            ReportDocument raport = new ReportDocument();
            string cale = Server.MapPath("Raport_fluturasi.rpt");
            raport.Load(cale);
            raport.SetDataSource(ds.Tables["salarii"]);

            DiskFileDestinationOptions fisier = new DiskFileDestinationOptions();
            raport.ExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
            raport.ExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
            fisier.DiskFileName = Server.MapPath(DateTime.Today.Month + TextBox3.Text + ".pdf");
            raport.ExportOptions.DestinationOptions = fisier;
            raport.Export();
            Label6.Text = "PDF generat cu succes! :)";
        }
        catch (Exception ex)
        {
            Label6.Text = "error" + ex.ToString();
        }
    }
}