<asp:Label ID="lblInput" runat="server" Text="Enter Username:"></asp:Label>
<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
<asp:CustomValidator
  ID="cvUsername"
  runat="server"
  ControlToValidate="txtUsername"
  ErrorMessage="Username must be at least 5 characters long."
  OnServerValidate="cvUsername_ServerValidate"
  ForeColor="Red"
  >*</asp:CustomValidator
>
<br /><br />
<asp:Button
  ID="btnSubmit"
  runat="server"
  Text="Submit"
  OnClick="btnSubmit_Click"
/>
