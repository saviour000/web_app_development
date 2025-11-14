<%@ Page Language="C#" AutoEventWireup="true" CodeFile="traindata.aspx.cs"
Inherits="traindata" %>
<!DOCTYPE html>
<html>
  <body>
    <form runat="server">
      Train ID: <asp:TextBox ID="txtID" runat="server" ReadOnly="true" /><br />
      Name: <asp:TextBox ID="txtName" runat="server" /><br />
      Type: <asp:TextBox ID="txtType" runat="server" /><br />
      Arrival: <asp:TextBox ID="txtArrival" runat="server" /><br />
      Departure: <asp:TextBox ID="txtDeparture" runat="server" /><br />
      Start: <asp:TextBox ID="txtStart" runat="server" /><br />
      End: <asp:TextBox ID="txtEnd" runat="server" /><br />

      <asp:Button
        ID="btnInsert"
        runat="server"
        Text="Insert"
        OnClick="btnInsert_Click"
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
      <asp:TextBox ID="txtSearch" runat="server" />
      <asp:Button
        ID="btnSearch"
        runat="server"
        Text="Search"
        OnClick="btnSearch_Click"
      />
      <asp:Button
        ID="btnShow"
        runat="server"
        Text="Show All"
        OnClick="btnShow_Click"
      />

      <br /><asp:GridView
        ID="GridView1"
        runat="server"
        AutoGenerateColumns="true"
      />
    </form>
  </body>
</html>
