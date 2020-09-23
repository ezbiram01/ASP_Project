<%--
Programmeur: ziad Biram
Bute       : Projet 2
Date       : 25 mars 2022
--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="Projet_2_ClientsEmploye.Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Nom:&nbsp;
    <asp:TextBox ID="nomCokieTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nomCokieTextBox" ErrorMessage="Le nom est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    Prenom:&nbsp;
    <asp:TextBox ID="prenomCokiesTextBox" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="prenomCokiesTextBox" ErrorMessage="Le prenom est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="loginButton" runat="server" OnClick="loginButton_Click" Text="Login" />
</p>
</asp:Content>
