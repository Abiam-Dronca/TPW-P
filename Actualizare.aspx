<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Actualizare.aspx.cs" Inherits="Default2" UnobtrusiveValidationMode="None" %>

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
    1.CAUTARE + EDITARE DATE
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="NR_CRT" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:CommandField CancelText="Renunta" EditText="Editeaza" ShowEditButton="True" UpdateText="Salveaza" />
            <asp:TemplateField HeaderText="NUME" SortExpression="NUME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NUME") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere! Prima litera sa fie de tipar!</asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("NUME") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PRENUME" SortExpression="PRENUME">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PRENUME") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere! Prima litera sa fie de tipar!</asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("PRENUME") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="FUNCTIE" SortExpression="FUNCTIE">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FUNCTIE") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="RangeValidator" MaximumValue="z" MinimumValue="a">Introduceti caractere! Prima litera sa fie litera mica!</asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("FUNCTIE") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SALAR_BAZA" SortExpression="SALAR_BAZA">
                <EditItemTemplate>
                    <asp:TextBox ID="sal" runat="server" Text='<%# Bind("SALAR_BAZA") %>' Width="136px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="sal" ErrorMessage="RequiredFieldValidator">Scrie salariul (cifre)!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="sal" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti numere pozitive!</asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("SALAR_BAZA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="SPOR" SortExpression="SPOR">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("SPOR") %>' Height="21px" Width="142px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">Introdu sporul (cifre)!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti numere pozitive!</asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("SPOR") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="PREMII_BRUTE" SortExpression="PREMII_BRUTE">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">Introdu premiile (cifre)!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti numere pozitive!</asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="RETINERI" SortExpression="RETINERI">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("RETINERI") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator">Introdu retinerile (cifre)!</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti numere pozitive!</asp:RangeValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("RETINERI") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM &quot;SALARII&quot; WHERE &quot;NR_CRT&quot; = :NR_CRT" InsertCommand="INSERT INTO &quot;SALARII&quot; (&quot;NR_CRT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;FUNCTIE&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR&quot;, &quot;PREMII_BRUTE&quot;, &quot;TOTAL_BRUT&quot;, &quot;BRUT_IMPOZABIL&quot;, &quot;IMPOZIT&quot;, &quot;CAS&quot;, &quot;CASS&quot;, &quot;RETINERI&quot;, &quot;VIRAT_CARD&quot;) VALUES (:NR_CRT, :NUME, :PRENUME, :FUNCTIE, :SALAR_BAZA, :SPOR, :PREMII_BRUTE, :TOTAL_BRUT, :BRUT_IMPOZABIL, :IMPOZIT, :CAS, :CASS, :RETINERI, :VIRAT_CARD)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;SALARII&quot; WHERE (&quot;NUME&quot; = :NUME)" UpdateCommand="UPDATE &quot;SALARII&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;FUNCTIE&quot; = :FUNCTIE, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR&quot; = :SPOR, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;TOTAL_BRUT&quot; = :TOTAL_BRUT, &quot;BRUT_IMPOZABIL&quot; = :BRUT_IMPOZABIL, &quot;IMPOZIT&quot; = :IMPOZIT, &quot;CAS&quot; = :CAS, &quot;CASS&quot; = :CASS, &quot;RETINERI&quot; = :RETINERI, &quot;VIRAT_CARD&quot; = :VIRAT_CARD WHERE &quot;NR_CRT&quot; = :NR_CRT">
        <DeleteParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="FUNCTIE" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="BRUT_IMPOZABIL" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
            <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="NUME" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="NUME" Type="String" />
            <asp:Parameter Name="PRENUME" Type="String" />
            <asp:Parameter Name="FUNCTIE" Type="String" />
            <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
            <asp:Parameter Name="SPOR" Type="Decimal" />
            <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
            <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
            <asp:Parameter Name="BRUT_IMPOZABIL" Type="Decimal" />
            <asp:Parameter Name="IMPOZIT" Type="Decimal" />
            <asp:Parameter Name="CAS" Type="Decimal" />
            <asp:Parameter Name="CASS" Type="Decimal" />
            <asp:Parameter Name="RETINERI" Type="Decimal" />
            <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
            <asp:Parameter Name="NR_CRT" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Introduceti numele cautat: "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Cauta" />
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti numele cautat(litere)! Prima litera sa fie de tipar!</asp:RangeValidator>
    <br />
    <br />
    2. EDITARE MULTIPLA
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="NR_CRT" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField CancelText="Renunta" EditText="Editeaza" ShowEditButton="True" UpdateText="Modifica" />
        <asp:TemplateField HeaderText="NUME" SortExpression="NUME">
            <EditItemTemplate>
                <asp:TextBox ID="sal" runat="server" Text='<%# Bind("NUME") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="sal" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator9" runat="server" ControlToValidate="sal" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere! Primul caracter sa fie de tipar!</asp:RangeValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("NUME") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="PRENUME" SortExpression="PRENUME">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PRENUME") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator10" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" MaximumValue="Z" MinimumValue="A">Introduceti caractere! Primul caracter sa fie de tipar!</asp:RangeValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("PRENUME") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="FUNCTIE" SortExpression="FUNCTIE">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("FUNCTIE") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator">Scrie ceva!</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator11" runat="server" ControlToValidate="TextBox3" ErrorMessage="RangeValidator" MaximumValue="z" MinimumValue="a">Introduceti caractere! Primul caracter sa fie litera mica!</asp:RangeValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("FUNCTIE") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="SALAR_BAZA" SortExpression="SALAR_BAZA">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("SALAR_BAZA") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">Scrie salarul (cifre)!</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator12" runat="server" ControlToValidate="TextBox4" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti numere pozitive!</asp:RangeValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("SALAR_BAZA") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="SPOR" SortExpression="SPOR">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("SPOR") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator">Scrie sporul (cifre)!</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator13" runat="server" ControlToValidate="TextBox5" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti numere pozitive!</asp:RangeValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("SPOR") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="PREMII_BRUTE" SortExpression="PREMII_BRUTE">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">Scrie premiile (cifre)!</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator14" runat="server" ControlToValidate="TextBox6" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti numere pozitive!</asp:RangeValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("PREMII_BRUTE") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="RETINERI" SortExpression="RETINERI">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("RETINERI") %>'></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator">Scrie retinerile (cifre)!</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator15" runat="server" ControlToValidate="TextBox7" ErrorMessage="RangeValidator" MaximumValue="10000" MinimumValue="0" Type="Integer">Introduceti numere pozitive!</asp:RangeValidator>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label8" runat="server" Text='<%# Bind("RETINERI") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;SALARII&quot;" DeleteCommand="DELETE FROM &quot;SALARII&quot; WHERE &quot;NR_CRT&quot; = :NR_CRT" InsertCommand="INSERT INTO &quot;SALARII&quot; (&quot;NR_CRT&quot;, &quot;NUME&quot;, &quot;PRENUME&quot;, &quot;FUNCTIE&quot;, &quot;SALAR_BAZA&quot;, &quot;SPOR&quot;, &quot;PREMII_BRUTE&quot;, &quot;TOTAL_BRUT&quot;, &quot;BRUT_IMPOZABIL&quot;, &quot;IMPOZIT&quot;, &quot;CAS&quot;, &quot;CASS&quot;, &quot;RETINERI&quot;, &quot;VIRAT_CARD&quot;) VALUES (:NR_CRT, :NUME, :PRENUME, :FUNCTIE, :SALAR_BAZA, :SPOR, :PREMII_BRUTE, :TOTAL_BRUT, :BRUT_IMPOZABIL, :IMPOZIT, :CAS, :CASS, :RETINERI, :VIRAT_CARD)" UpdateCommand="UPDATE &quot;SALARII&quot; SET &quot;NUME&quot; = :NUME, &quot;PRENUME&quot; = :PRENUME, &quot;FUNCTIE&quot; = :FUNCTIE, &quot;SALAR_BAZA&quot; = :SALAR_BAZA, &quot;SPOR&quot; = :SPOR, &quot;PREMII_BRUTE&quot; = :PREMII_BRUTE, &quot;TOTAL_BRUT&quot; = :TOTAL_BRUT, &quot;BRUT_IMPOZABIL&quot; = :BRUT_IMPOZABIL, &quot;IMPOZIT&quot; = :IMPOZIT, &quot;CAS&quot; = :CAS, &quot;CASS&quot; = :CASS, &quot;RETINERI&quot; = :RETINERI, &quot;VIRAT_CARD&quot; = :VIRAT_CARD WHERE &quot;NR_CRT&quot; = :NR_CRT">
    <DeleteParameters>
        <asp:Parameter Name="NR_CRT" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="NR_CRT" Type="Decimal" />
        <asp:Parameter Name="NUME" Type="String" />
        <asp:Parameter Name="PRENUME" Type="String" />
        <asp:Parameter Name="FUNCTIE" Type="String" />
        <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
        <asp:Parameter Name="SPOR" Type="Decimal" />
        <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
        <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
        <asp:Parameter Name="BRUT_IMPOZABIL" Type="Decimal" />
        <asp:Parameter Name="IMPOZIT" Type="Decimal" />
        <asp:Parameter Name="CAS" Type="Decimal" />
        <asp:Parameter Name="CASS" Type="Decimal" />
        <asp:Parameter Name="RETINERI" Type="Decimal" />
        <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NUME" Type="String" />
        <asp:Parameter Name="PRENUME" Type="String" />
        <asp:Parameter Name="FUNCTIE" Type="String" />
        <asp:Parameter Name="SALAR_BAZA" Type="Decimal" />
        <asp:Parameter Name="SPOR" Type="Decimal" />
        <asp:Parameter Name="PREMII_BRUTE" Type="Decimal" />
        <asp:Parameter Name="TOTAL_BRUT" Type="Decimal" />
        <asp:Parameter Name="BRUT_IMPOZABIL" Type="Decimal" />
        <asp:Parameter Name="IMPOZIT" Type="Decimal" />
        <asp:Parameter Name="CAS" Type="Decimal" />
        <asp:Parameter Name="CASS" Type="Decimal" />
        <asp:Parameter Name="RETINERI" Type="Decimal" />
        <asp:Parameter Name="VIRAT_CARD" Type="Decimal" />
        <asp:Parameter Name="NR_CRT" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
<p>
    &nbsp;</p>
</asp:Content>

