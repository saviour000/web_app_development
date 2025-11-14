<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
Inherits="WebApplication11._Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>CRUD Operations using ADO.NET</title>
    <style>
      .auto-style1 {
        width: 137px;
      }
      table {
        margin: 20px;
      }
    </style>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <table>
          <tr>
            <td colspan="2"><h3>Student Login Info</h3></td>
          </tr>
          <tr>
            <td class="auto-style1">Enter Id</td>
            <td><asp:TextBox ID="txtId" runat="server"></asp:TextBox></td>
          </tr>
          <tr>
            <td class="auto-style1">Enter Name</td>
            <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
          </tr>
          <tr>
            <td class="auto-style1">Enter Password</td>
            <td>
              <asp:TextBox
                ID="txtPassword"
                runat="server"
                TextMode="Password"
              ></asp:TextBox>
            </td>
          </tr>
          <tr>
            <td></td>
            <td>
              <asp:Button
                ID="btnInsert"
                runat="server"
                Text="Insert"
                OnClick="btnInsert_Click"
              />
              <asp:Button
                ID="btnFind"
                runat="server"
                Text="Find"
                OnClick="btnFind_Click"
              />
              <asp:Button
                ID="btnUpdate"
                runat="server"
                Text="Update"
                OnClick="btnUpdate_Click"
              />
              <asp:Button
                ID="btnDelete"
                runat="server"
                Text="Delete"
                OnClick="btnDelete_Click"
              />
            </td>
          </tr>
        </table>
      </div>

      <hr />

      <asp:GridView
        ID="GridView1"
        runat="server"
        AutoGenerateColumns="true"
        BorderWidth="1"
        CellPadding="5"
      ></asp:GridView>
    </form>
  </body>
</html>
