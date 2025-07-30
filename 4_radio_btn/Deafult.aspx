<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
Inherits="GenderApp.Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Gender Selection</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <h3>Select Gender:</h3>
      <asp:RadioButton
        ID="rbMale"
        runat="server"
        GroupName="Gender"
        Text="Male"
      />
      <asp:RadioButton
        ID="rbFemale"
        runat="server"
        GroupName="Gender"
        Text="Female"
      />
      <br /><br />
      <asp:Button
        ID="btnShowGender"
        runat="server"
        Text="Show Gender"
        OnClick="btnShowGender_Click"
      />
      <br /><br />
      <asp:Label
        ID="lblGender"
        runat="server"
        Font-Bold="True"
        ForeColor="Blue"
      ></asp:Label>
    </form>
  </body>
</html>
