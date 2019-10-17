<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Modify.aspx.cs" Inherits="_default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
	Modify Unit Conversions
</title></head>
<body>
    <form id="form1" runat="server">

        <div style="background-color: #8ae3d1; border-style: solid; border-width: 1px; margin: auto; width: 800px; padding: 10px">
            <h1 style="text-align: center">Modify Unit Conversions</h1>
            <div style="text-align: center" aria-readonly="True">
                Edit the unit conversion database below:
                <br />
                <br />
                Select unit to be deleted and click "Delete": 
                <br />
                <br />
                &nbsp;
                <asp:DropDownList ID="UnitList" runat="server" DataSourceID="UnitConv" DataTextField="Unit" DataValueField="Id"></asp:DropDownList>
                &nbsp;
                <asp:Button ID="delButton" runat="server" Text="Delete" OnClick="delButton_Click" Width="61px" />
                <br />
                <br /> 
                <br />
                Type the unit and conversion factor to be added and click "Add": 
                <br />
                <br />
                Unit: <asp:TextBox ID="unitBox" runat="server"></asp:TextBox>  
                &nbsp;
                Factor: <asp:TextBox ID="convBox" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Button ID="addButton" name="addButton" value="Add" type="submit" runat="server" text="Add" OnClick="addButton_Click" Width="62px" />
                <br />
                <br />
                <asp:SqlDataSource ID="UnitConv" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Conversions]" InsertCommand="INSERT INTO Conversions(Unit, Factor) VALUES (@newUnit, @newFactor)" DeleteCommand="DELETE FROM Conversions WHERE (Id = @id)">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="UnitList" Name="id" PropertyName="SelectedValue" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="unitBox" Name="newUnit" PropertyName="Text" />
                        <asp:ControlParameter ControlID="convBox" Name="newFactor" PropertyName="Text" />
                    </InsertParameters>
                </asp:SqlDataSource>
                &nbsp;
                <br />
                <asp:Label ID="errorComment" name="errorComment" runat="server"></asp:Label>
            </div>
            <br />
                <asp:Button ID="modButton" runat="server" Text="Return to Conversions" OnClick="modButton_Click" />
            <br />

        </div>
    </form>
</body>
</html>

