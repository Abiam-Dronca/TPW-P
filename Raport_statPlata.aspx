<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Raport_statPlata.aspx.cs" Inherits="Default2" %><%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

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
    <br />
    <br />

    RAPORT STAT DE PLATA
    <br />
    <br />
    <CR:CrystalReportViewer ID="CrystalReportViewer2" runat="server" AutoDataBind="true" ToolPanelView="None" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
    <p>
       <%-- <asp:Label ID="Label3" runat="server" Text="Introduceti luna curenta pentru a generea numele PDF-ului: "></asp:Label>--%>
       <%-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Scrie luna curenta(cifre)!</asp:RequiredFieldValidator>--%>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Introduecti alte detalii pe care doriti sa le contina numele PDF-ului: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Genereaza PDF" />
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <asp:Label ID="Label6" runat="server"></asp:Label>
    </p>
</asp:Content>

