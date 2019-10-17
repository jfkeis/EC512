<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	Online Forum
</title></head>
<body>
    <form id="form1" runat="server">

        <div style="background-color:#4800ff; border-style: solid; border-width: 1px; margin: auto; width: 800px; padding: 20px; font-family:Arial;">
            
            <div style="background-color:lightgrey; position: relative; height:30px; width: 780px; margin:auto; border-style: solid; border-width: 1px; top: 0px; left: 0px;">
                <asp:Panel ID="Panel1" runat="server" style="position: absolute; margin:auto; width: 150px; left: 550px; height: 25px; text-align: center; padding-top: 5px;">
                <a href="Login.aspx">Login</a>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <a href="Register.aspx">Register</a>
                </asp:Panel>
                <asp:Panel ID="Panel2" runat="server" style="position: absolute; width: 300px; left: 400px; height: 25px; text-align: right; padding-top: 5px; top: 0px;">
                    Hello
                    <asp:Label ID="hello" runat="server" Text="user"></asp:Label>
                    &nbsp; &nbsp;
                    <asp:LinkButton ID="logout" runat="server" OnClick="logout_Click">Logout</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                </asp:Panel>
           </div>
           <div style="position: relative; margin: auto; padding-top: 60px; padding: 40px; width: 700px; border-style: solid; border-width:1px; background-color:#8ae3d1;">
               <h1 style="text-align: center">Online Forum</h1>
               <br />
               <asp:Button ID="PostButton" runat="server" Text="Make Post" OnClick="PostButton_Click" Width="150px" />
               <br />
               <br />
               <table style="border-collapse: collapse; background-color:white;">
                   <asp:Repeater ID="CommentRepeater" runat="server" DataSourceID="Messages">
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

                <br />
                <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>
           </div>

            
           <br />

        </div>
        <asp:SqlDataSource ID="Messages" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Comments] 
ORDER BY DateTime DESC"></asp:SqlDataSource>
    </form>
</body>
</html>
