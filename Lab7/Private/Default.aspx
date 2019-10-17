<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Private_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Post</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-color:#8ae3d1; border-style: solid; border-width: 1px; margin: auto; width: 800px; padding: 20px; font-family:Arial;">
        <h1 style="text-align: center">Create Post</h1>
        <p style="text-align: center">
            &nbsp;</p>
        <asp:TextBox ID="CommentBox" runat="server" Rows="5" TextMode="MultiLine" Width="545px" Font-Names="Arial"></asp:TextBox>
        &nbsp &nbsp
        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        &nbsp &nbsp
        <asp:Button ID="DeleteButton" runat="server" Text="Clear" OnClick="DeleteButton_Click" Width="59px" />
        <br />
        <br />
        <asp:Label ID="errorLabel" runat="server"></asp:Label>
        <br />
        <br />
        <table style="border-collapse: collapse; background-color:white;">
            <asp:Repeater ID="CommentRepeater" runat="server" DataSourceID="Comments">
                    <ItemTemplate>
                        <tr>
                            <td style="border-style: solid; border-width: thin; width: 95px">
                                <%# Eval("DateTime")%>
                            </td>
                            <td style="border-style: solid; border-width: thin; width: 100px;">
                                <%# Eval("Poster")%>
                            </td>
                            <td style="border-style: solid; border-width: thin; width: 500px;">
                                <%# Eval("Comment")%>
                            </td>
                        </tr>

                    </ItemTemplate>
                </asp:Repeater>
            </table>
    </div>
        <asp:SqlDataSource ID="Comments" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comments]
ORDER BY DateTime DESC" InsertCommand="INSERT INTO Comments(DateTime, Poster, Comment) VALUES (@Date, @User , @Post)">
            <InsertParameters>
                <asp:ControlParameter ControlID="DateField" Name="Date" PropertyName="Value" />
                <asp:ControlParameter ControlID="UserField" Name="User" PropertyName="Value" />
                <asp:ControlParameter ControlID="CommentField" Name="Post" PropertyName="Value" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:HiddenField ID="DateField" runat="server" />
        <asp:HiddenField ID="UserField" runat="server" />
        <asp:HiddenField ID="CommentField" runat="server" />
    </form>
</body>
</html>
