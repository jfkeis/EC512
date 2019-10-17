<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	Unit Conversions
</title></head>
<body>
    <form id="form1" runat="server">

        <div style="background-color: #8ae3d1; border-style: solid; border-width: 1px; margin: auto; width: 800px; padding: 10px">
            <h1 style="text-align: center">Unit Conversions</h1>
            <div style="text-align: center" aria-readonly="True">
                Enter input value, select input units, and select output units: 
                <br />
                Input: 
                <br />
                <asp:TextBox ID="inputBox" name="inputBox" runat="server"></asp:TextBox>    
                &nbsp;
                <asp:DropDownList ID="UnitList" runat="server" DataSourceID="UnitConv" DataTextField="Unit" DataValueField="Factor"></asp:DropDownList>
                <asp:SqlDataSource ID="UnitConv" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Conversions]"></asp:SqlDataSource>
                <br /> 
                Output:
                <br /> 
                <asp:TextBox ID="outputBox" runat="server" ReadOnly="True"></asp:TextBox>  
                &nbsp;
                <asp:DropDownList ID="ResultList" runat="server" DataSourceID="UnitConv" DataTextField="Unit" DataValueField="Factor"></asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="generateButton" name="generateButton" value="Generate" type="submit" runat="server" text="Generate" OnClick="generateButton_Click" />
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
