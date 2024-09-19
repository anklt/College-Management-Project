<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication1.adminlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin Login</title>
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <link href="css/admin.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Admin Login</h2>
    <asp:Panel ID="LoginPanel" runat="server" CssClass="login-panel">
        <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="login-label" />
        <asp:TextBox ID="txtUsername" runat="server" CssClass="login-input" />

        <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="login-label" />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="login-input" />

        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="login-button" />
        <asp:Label ID="lblMessage" runat="server" CssClass="message-label" />
    </asp:Panel>
</asp:Content>
