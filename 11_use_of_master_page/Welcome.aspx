<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/Site.master"
AutoEventWireup="true" CodeFile="Welcome.aspx.cs"
Inherits="WebApplication2.Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <h2>Welcome</h2>
  <asp:Label ID="lblWelcome" runat="server" Font-Bold="True"></asp:Label>
</asp:Content>
