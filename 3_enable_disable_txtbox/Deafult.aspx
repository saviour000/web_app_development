<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
Inherits="TextboxControlDemo.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Textbox Control Demo</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div style="margin: 50px">
        <asp:TextBox ID="txtDemo" runat="server" Width="200px"></asp:TextBox
        ><br /><br />
        <asp:Button
          ID="btnEnable"
          runat="server"
          Text="Enable TextBox"
          OnClick="btnEnable_Click"
        />
        <asp:Button
          ID="btnDisable"
          runat="server"
          Text="Disable TextBox"
          OnClick="btnDisable_Click"
        />
        <asp:Button
          ID="btnResize"
          runat="server"
          Text="Change Width"
          OnClick="btnResize_Click"
        />
      </div>
    </form>
  </body>
</html>
