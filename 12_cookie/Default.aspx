<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
Inherits="CookieDemo.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Cookie Example</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div style="font-family: Arial; padding: 20px">
        <h2>Cookie Demo</h2>

        <asp:Label
          ID="lblName"
          runat="server"
          Text="Enter your name: "
        ></asp:Label>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button
          ID="btnSave"
          runat="server"
          Text="Save Cookie"
          OnClick="btnSave_Click"
        />
        <asp:Button
          ID="btnDelete"
          runat="server"
          Text="Delete Cookie"
          OnClick="btnDelete_Click"
        />

        <br /><br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>

        <br /><br />
        <asp:HyperLink
          ID="hlNextPage"
          runat="server"
          NavigateUrl="~/Welcome.aspx"
          >Go to Welcome Page</asp:HyperLink
        >
      </div>
    </form>
  </body>
</html>
