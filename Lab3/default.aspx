<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	Numeric Palendromes
</title></head>
<body>
    <form id="form1" runat="server">

        <div style="background-color: #C0C0C0; border-style: solid; border-width: 1px; margin: auto; width: 800px; padding: 10px">
            <h1 style="text-align: center">Find Numeric Palindromes</h1>
            <div style="text-align: center" aria-readonly="True">
                Enter a starting integer (0-1,000,000,000):&nbsp;
            <asp:TextBox name="startBox" ID="startBox" type="text" style="width:81px;" runat="server"></asp:TextBox>
                &nbsp;&nbsp; Enter count (1-100):&nbsp;
            <asp:TextBox name="countbox" ID="countBox" type="text" style="width:47px;" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="generateButton" name="generateButton" value="Generate" type="submit" runat="server" text="Generate" OnClick="generateButton_Click" />
                <br />
                <br />
                <asp:ListBox ID="ResultBox" TextMode="MultiLine" name="ResultBox" runat="server" Width="100px" ReadOnly="True" Wrap="False" rows="10" Font-Names="Arial"></asp:ListBox>
                &nbsp;
                <br />
                <br />
                <asp:Label ID="errorComment" name="errorComment" runat="server"></asp:Label>
            </div>
            <br />

        </div>
    </form>
</body>
</html>
