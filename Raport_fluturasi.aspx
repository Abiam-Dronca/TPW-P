<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Raport_fluturasi.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    RAPORT FLUTURASI<br />
    <br />

    <asp:Label ID="Label2" runat="server" Text="Introduceti numele cautat: "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere! Primul caracter sa fie litera mare!</asp:RangeValidator>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Introduceti prenumele cautat: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere! Primul caracter sa fie litera mare!</asp:RangeValidator>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cauta" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </p>
    <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="true" />
    
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ToolPanelView="None" />
    <asp:Label ID="Label5" runat="server" Text="Completare nume PDF: "></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
    <asp:Button ID="Button2" runat="server" Text="Genereaza PDF" OnClick="Button2_Click" />
    <asp:Label ID="Label6" runat="server"></asp:Label>
</asp:Content>

