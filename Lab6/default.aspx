<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	Voting
</title></head>
<body>
    <form id="form1" runat="server">

        <div style="background-color: #8ae3d1; border-style: solid; border-width: 1px; margin: auto; width: 800px; padding: 10px">
            <h1 style="text-align: center">Vote Here!</h1>
            <div style="text-align: center" aria-readonly="True">
                Vote for your candidate of choice below:
                <br />
                <br />
                <div style="margin: 0 auto; width:15%;">
                    <asp:RadioButtonList ID="CandidateList" runat="server" DataSourceID="VoteData" DataTextField="Candidate" DataValueField="Id" EnableTheming="True"></asp:RadioButtonList>
                <br />
                </div>
                <asp:Button ID="voteButton" name="voteButton" value="Vote" type="submit" runat="server" text="Vote" OnClick="voteButton_Click" Width="56px" />
                &nbsp;
                <br />
                <br />
                <asp:Label ID="errorComment" name="errorComment" runat="server"></asp:Label>
            </div>
                <asp:Button ID="modButton" runat="server" Text="View Votes" OnClick="modButton_Click" />
            <asp:SqlDataSource ID="VoteData" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Votes]" UpdateCommand="UPDATE Votes SET Count = Count+1 WHERE (Id = @candID)">
                <UpdateParameters>
                    <asp:ControlParameter ControlID="CandidateList" Name="candID" PropertyName="SelectedValue" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />

        </div>
    </form>
</body>
</html>
