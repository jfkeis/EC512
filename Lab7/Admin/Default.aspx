<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="position: relative; margin: auto; padding-top: 60px; padding: 40px; width: 700px; border-style: solid; border-width:1px; background-color:#8ae3d1;">
    
        <h1 style="text-align: center">Admin Page</h1>
        <table style="border-collapse: collapse; background-color:white;">
            <asp:Repeater ID="CommentRepeater" runat="server" DataSourceID="Comments">
                    <ItemTemplate>
                        <tr>
                            <td style="border-style: solid; border-width: thin; width: 95px">
                                <%# Eval("Id")%>
                            </td>
                            <td style="border-style: solid; border-width: thin; width: 100px;">
                                <%# Eval("UserName")%>
                            </td>
                            <td style="border-style: solid; border-width: thin; width: 500px;">
                                <%# Eval("Role")%>
                            </td>
                        </tr>

                    </ItemTemplate>
                </asp:Repeater>
            </table>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]">
        </asp:SqlDataSource>
        <asp:HiddenField ID="hiddenUserName" runat="server"/>
    </form>
</body>
</html>