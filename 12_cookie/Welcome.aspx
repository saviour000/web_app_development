<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs"
Inherits="CookieDemo.Welcome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Welcome Page</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div style="font-family: Arial; padding: 20px">
        <h2>Welcome Page</h2>
        <asp:Label
          ID="lblWelcome"
          runat="server"
          Font-Size="Large"
          ForeColor="Blue"
        ></asp:Label>
        <br /><br />
        <asp:HyperLink ID="hlBack" runat="server" NavigateUrl="~/Default.aspx"
          >Back to Home</asp:HyperLink
        >
      </div>
    </form>
  </body>
</html>
