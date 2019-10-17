<%@ Page Language="C#" AutoEventWireup="true" CodeFile="current.aspx.cs" Inherits="_default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	Current Votes
</title></head>
<body>
    <form id="form1" runat="server">

        <div style="background-color: #8ae3d1; border-style: solid; border-width: 1px; margin: auto; width: 800px; padding: 10px">
            <h1 style="text-align: center">Current Votes</h1>
            <div style="text-align: center" aria-readonly="True">
                <h3>Thank you for voting!</h3>
              
                <br />
                <div style="margin: 0 auto; width:45%;">
                    <asp:Table ID="VoteTable" runat="server" CssClass="collapse">
                    </asp:Table>
                </div>
                <br />
                <asp:SqlDataSource ID="VoteData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Votes]">
                </asp:SqlDataSource>
                &nbsp;
                <br />
                <asp:Label ID="errorComment" name="errorComment" runat="server"></asp:Label>
            </div>
            <br />
                <asp:Button ID="returnButton" runat="server" Text="Return to Voting" OnClick="returnButton_Click" />
            <br />

        </div>
    </form>
</body>
</html>

