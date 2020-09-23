<%--
Programmeur: ziad Biram
Bute       : Projet 2
Date       : 25 mars 2022
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Employes.aspx.cs" Inherits="Projet_2_ClientsEmploye.Employes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="EmployeeID" DataSourceID="EmployeySqlDataSource" ForeColor="Black" GridLines="None" OnRowCommand="GridView1_RowCommand">
    <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:ButtonField Text="Afficher" />
        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
    </Columns>
    <FooterStyle BackColor="Tan" />
    <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    <SortedAscendingCellStyle BackColor="#FAFAE7" />
    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
    <SortedDescendingCellStyle BackColor="#E1DB9C" />
    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
<asp:SqlDataSource ID="EmployeySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString3 %>" SelectCommand="SELECT EmployeeID, LastName, FirstName, BirthDate, Country FROM Employees"></asp:SqlDataSource>
<br />
Nom:
<asp:TextBox ID="nomTextBox" runat="server"></asp:TextBox>
<br />
<br />
Prenom:
<asp:TextBox ID="prenomTextBox" runat="server"></asp:TextBox>
</asp:Content>
