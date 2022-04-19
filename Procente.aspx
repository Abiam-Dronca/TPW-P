<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Procente.aspx.cs" Inherits="Default2" %>

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
Modificarea valorilor corespunzatoare CAS, CASS, IMPOZIT<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="PROCENT_CAS" HeaderText="PROCENT_CAS" SortExpression="PROCENT_CAS" />
            <asp:BoundField DataField="PROCENT_CASS" HeaderText="PROCENT_CASS" SortExpression="PROCENT_CASS" />
            <asp:BoundField DataField="PROCENT_IMPOZIT" HeaderText="PROCENT_IMPOZIT" SortExpression="PROCENT_IMPOZIT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROCENTE&quot;"></asp:SqlDataSource>
    <br />
    <table style="width:auto; height:auto; ">
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="CAS %: "></asp:Label>
            </td>
            <td style="width: auto">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">Introduceti valoarea dorita!</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="CASS %: "></asp:Label>
            </td>
            <td style="width: auto">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">Introduceti valoarea dorita!</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="IMPOZIT %: "></asp:Label>
            </td>
            <td style="width: auto">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">Introduceti valoarea dorita!</asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr>
            <td style="text-align:left;" colspan="2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Modifica" />
                <asp:Button ID="Button2" runat="server" Text="Renunta" OnClick="Button2_Click" />
            </td>
        </tr>
        </table>
    <br />
    <br />
    <p>
        <asp:Label ID="Label8" runat="server"></asp:Label>
        <asp:Label ID="Label7" runat="server"></asp:Label>
        <asp:Label ID="Label9" runat="server"></asp:Label>
    </p>
</asp:Content>

