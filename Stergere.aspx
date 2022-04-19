<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Stergere.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<p>
<br/>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        CAUTARE + STERGERE SALARIAT</p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Introduceti numele: "></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere! Primul caracter litera mare!</asp:RangeValidator>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Introduceti prenumele: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere!Primul caracter litera mare!</asp:RangeValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Cauta" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Renunta" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Sterge" OnClick="Button3_Click" /><br />
        <asp:Label ID="Label5" runat="server" BackColor="#0066FF"></asp:Label>
        <asp:Label ID="Label6" runat="server"></asp:Label>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />

    </p>
</asp:Content>

