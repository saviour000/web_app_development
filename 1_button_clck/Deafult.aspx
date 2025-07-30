<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
Inherits="WelcomeApp.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Welcome Application</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div style="text-align: center; margin-top: 50px">
        <asp:Button
          ID="btnWelcome"
          runat="server"
          Text="Click"
          OnClick="btnWelcome_Click"
        />
        <br /><br />
        <asp:Label
          ID="lblMessage"
          runat="server"
          Font-Size="Large"
          ForeColor="Green"
        ></asp:Label>
      </div>
    </form>
  </body>
</html>
