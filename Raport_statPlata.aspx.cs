using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Oracle.ManagedDataAccess.Client;
using Oracle.Web;
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
            string cale = Server.MapPath("Raport_statPlata.rpt");
            raport.Load(cale);
            raport.SetDataSource(ds.Tables["salarii"]);
            CrystalReportViewer2.ReportSource = raport;

        }
        catch (Exception ex)
        {
            Label2.Text = "error" + ex.ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       try
        { 
            ReportDocument raport = new ReportDocument();
            
            string cale = Server.MapPath("Raport_statPlata.rpt");
            raport.Load(cale);
            raport.SetDataSource(ds.Tables["salarii"]);
            DiskFileDestinationOptions fisier = new DiskFileDestinationOptions();
            raport.ExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
            raport.ExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
            fisier.DiskFileName = Server.MapPath(DateTime.Today.Month + TextBox2.Text+".pdf");
            raport.ExportOptions.DestinationOptions = fisier;
            raport.Export();
            Label5.Text = "PDF generat cu succes!";
        }
        catch(Exception ex)
        {
            Label6.Text = "error" + ex.ToString();
        }
    }
}