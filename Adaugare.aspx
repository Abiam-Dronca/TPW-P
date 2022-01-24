<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Adaugare.aspx.cs" Inherits="Default2" %>

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
    INTRODUCERE + AFISARE NOI SALARIATI

    <table style="width:auto; height:397px; margin-top: 2px;"class="auto-style2">
            
            <tr>
                <td class="auto-style1" style="height: 9px">
                    <asp:Label ID="Label2" runat="server" Text="NUME:"></asp:Label>
                </td>
                <td style="width: 628px; height: 9px;">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Scrie numele!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere! Primul caracter litera de tipar!</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 12px">
                    <asp:Label ID="Label3" runat="server" Text="PRENUME:"></asp:Label>
                </td>
                <td style="width: 628px; height: 12px;">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">Scrie prenumele!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere! Primul caracter litera de tipar!</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 12px">
                    <asp:Label ID="Label4" runat="server" Text="FUNCTIE:"></asp:Label>
                </td>
                <td style="width: 628px; height: 12px;">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">Scrie functia!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="RangeValidator" MaximumValue="z" MinimumValue="a">Introduceti caractere! Primul caracter litera mica!</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 8px">
                    <asp:Label ID="Label5" runat="server" Text="SALAR DE BAZA:"></asp:Label>
                </td>
                <td style="width: 628px; height: 8px;">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">Introdu salarul (cifre)!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="RangeValidator" MaximumValue="100000" MinimumValue="0" Type="Integer">Introduceti cifre pozitive!</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 19px">
                    <asp:Label ID="Label6" runat="server" Text="SPOR:"></asp:Label>
                </td>
                <td style="width: 628px; height: 19px;">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">Introdu sporul (cifre)!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti cifre pozitive!</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="height: 4px">
                    <asp:Label ID="Label7" runat="server" Text="PREMII BRUTE:"></asp:Label>
                </td>
                <td style="width: 628px; height: 4px;">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator">Introdu premiile (cifre)!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti cifre pozitive!</asp:RangeValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style1" style="height: 6px">
                    <asp:Label ID="Label13" runat="server" Text="RETINERI:"></asp:Label>
                </td>
                <td style="width: 628px; height: 6px;">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator">Introdu retinerile (cifre)!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti cifre pozitive!</asp:RangeValidator>
                </td>
            </tr>
          
            <tr>
                <td style="height: 27px;" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Salveaza" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Renunta" />
                </td>
                
            </tr>
           
        </table>
    
     <asp:GridView ID="GridView1" runat="server">
     </asp:GridView>
     <asp:Label ID="Label9" runat="server"></asp:Label>
    
</asp:Content>

