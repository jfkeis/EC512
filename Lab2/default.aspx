<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Get Date Time</title>
     <style type="text/css">
        .center {
            text-align: center;
        }
        .bodydiv {
            margin: auto;
            border-style: solid;
            border-width: 1px;
            width: 800px;
            background-color: #C0C0C0;
            padding: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="bodydiv" style="height: 160px">
        <h1 class="center">Date and Time</h1>

        Date:
        <asp:TextBox ID="dateBox" runat="server" ReadOnly="True" name="dateBox"></asp:TextBox> &nbsp;
        Time:
        <asp:TextBox ID="timeBox" runat="server" ReadOnly="True" name="timeBox" type="text"></asp:TextBox>
        <br />
        <br />
        
        <asp:Button ID="GetButton" runat="server" Text="Get" type="submit" name="getButton"  style="width:67px;" OnClick="GetButton_Click" />
        
        <br />
    </div>
    </form>
</body>
</html>
