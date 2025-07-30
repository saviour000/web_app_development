<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs"
Inherits="program23.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Marks Calculator</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <table>
        <tr>
          <td>Enrollment No:</td>
          <td><asp:TextBox ID="txtEnroll" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td>Name:</td>
          <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td>Subject 1:</td>
          <td><asp:TextBox ID="txtSub1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td>Subject 2:</td>
          <td><asp:TextBox ID="txtSub2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td>Subject 3:</td>
          <td><asp:TextBox ID="txtSub3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td>Subject 4:</td>
          <td><asp:TextBox ID="txtSub4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td>Subject 5:</td>
          <td><asp:TextBox ID="txtSub5" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
          <td colspan="2">
            <asp:Button
              ID="btnCalculate"
              runat="server"
              Text="Calculate"
              OnClick="btnCalculate_Click"
            />
          </td>
        </tr>
      </table>
      <asp:Label ID="lblResult" runat="server" ForeColor="Blue"></asp:Label>
    </form>
  </body>
</html>
