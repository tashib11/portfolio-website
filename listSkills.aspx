<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listSkills.aspx.cs" Inherits="portfolio.listSkills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <div class="row">
    <div class="col-md-8 mx-auto">
        <asp:GridView ID="CoursesGridView" CssClass="table" runat="server" AutoGenerateColumns="false" OnRowCommand="CoursesGridView_RowCommand" style="font-size:40px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID"/>

                <asp:BoundField DataField="Field" HeaderText="Field"/>
                <asp:BoundField DataField="Description" HeaderText="Description"  />
                  <asp:TemplateField  HeaderText="Actions">
                       <ItemTemplate>
                           <asp:LinkButton ID= "updateLinkButton" CommandName="upd" CommandArgument='<%# Eval("Id") %>'  runat="server">Update</asp:LinkButton> <br />
                           <asp:LinkButton ID="deleteLinkButton" CommandName="del" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('Are you sure to delete?')"  runat="server">Delete</asp:LinkButton>
                       </ItemTemplate>
                  </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>
        </div>
    </form>
</body>
</html>
