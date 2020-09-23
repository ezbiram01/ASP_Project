<%--
    Programmeur: ziad Biram
    Bute       : Projet 2
    Date       : 25 mars 2020
--%>
<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="Projet_2_ClientsEmploye.Clients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Veullié entrer le payer d'origine du client"></asp:Label>
    

    <br />
    <br />
    <asp:TextBox ID="payerTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="payerTextBox" ErrorMessage="Vous devez entrer le payer d'origine du client" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="rechercherButton" runat="server" Text="Rechercher" OnClick="rechercherButton_Click" />
&nbsp;<asp:Button ID="annulerButton" runat="server" Text="Annuler" Width="103px" OnClick="annulerButton_Click" />
    <br />
    <br />
    <asp:GridView ID="CustomerGridView" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
<br />
<br />
<asp:Label ID="NombreClientLabel" runat="server"></asp:Label>
    

</asp:Content>
