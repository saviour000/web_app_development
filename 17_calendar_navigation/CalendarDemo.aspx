<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CalendarDemo.aspx.cs"
Inherits="CalendarDemo" %> <%@ Register Assembly="AjaxControlToolkit"
Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
  <head runat="server">
    <title>Calendar Navigation using Ajax Calendar Extender</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

      <div>
        <h3>Select Date:</h3>
        <asp:TextBox ID="txtDate" runat="server" Width="150px"></asp:TextBox>

        <!-- CalendarExtender from AjaxControlToolkit -->
        <asp:CalendarExtender
          ID="CalendarExtender1"
          runat="server"
          TargetControlID="txtDate"
          Format="dd-MM-yyyy"
        >
        </asp:CalendarExtender>

        <br /><br />
        <asp:Button
          ID="btnSubmit"
          runat="server"
          Text="Show Selected Date"
          OnClick="btnSubmit_Click"
        />
        <br /><br />
        <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
      </div>
    </form>
  </body>
</html>
