<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
Inherits="WebApplication17.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>XML Read and Write Demo</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div style="margin: 20px">
        <h3>Enter Student Details</h3>

        <asp:TextBox
          ID="txtName"
          runat="server"
          Placeholder="Enter Name"
        ></asp:TextBox>
        <br /><br />

        <asp:TextBox
          ID="txtAge"
          runat="server"
          Placeholder="Enter Age"
        ></asp:TextBox>
        <br /><br />

        <asp:Button
          ID="btnWrite"
          Text="Write to XML"
          runat="server"
          OnClick="btnWrite_Click"
        />
        <br /><br />

        <asp:Button
          ID="btnRead"
          Text="Read from XML"
          runat="server"
          OnClick="btnRead_Click"
        />
        <br /><br />

        <asp:Label ID="lblOutput" runat="server" ForeColor="Green"></asp:Label>
      </div>
    </form>
  </body>
</html>
