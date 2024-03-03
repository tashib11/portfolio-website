<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="portfolio.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="userTextBox" runat="server" placeholder="user name" style="font-size:50px"></asp:TextBox> <br />
        <asp:TextBox ID="passTextBox" runat="server" placeholder="password" style="font-size:50px"></asp:TextBox>
     <br />     <br />  <asp:Button ID="passButton" runat="server" Text="enter" OnClick="passButton_Click" style="font-size:50px" />
        </div>
    </form>
</body>
</html>
