using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        errorComment.Text = "";
    }

    protected void modButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("default.aspx");
    }

    protected void addButton_Click(object sender, EventArgs e)
    {
        try
        {
            if (unitBox.Text != "" && convBox.Text != "" && Convert.ToSingle(convBox.Text) > 0 && Convert.ToSingle(convBox.Text) < 3.4E+38)
            {
                UnitConv.Insert();
                errorComment.Text = "Entry added successfully!";
            }
            else
            {
                errorComment.Text = "Please enter a unit name and a positive number within the range (0 < n < 3.4E+38) for the conversion factor";
            }
        }
        catch (Exception ee)
        {
            errorComment.Text = "Please enter a unit name and a positive number within the range (0 < n < 3.4E+38) for the conversion factor";
            Console.WriteLine("{0} Exception caught.", ee);
        }
    }

    protected void delButton_Click(object sender, EventArgs e)
    {
        if (UnitList.SelectedValue != null) UnitConv.Delete();
        errorComment.Text = "Delete successful!";
    }
}