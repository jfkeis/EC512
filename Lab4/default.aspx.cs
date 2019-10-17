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

    }

    protected void generateButton_Click(object sender, EventArgs e)
    {
        double n;
        double factor;
        double outfactor;
        double result;
        errorComment.Text = "";

        try
        {
            n = Convert.ToDouble(inputBox.Text);
            factor = Convert.ToDouble(UnitList.SelectedValue);
            outfactor = Convert.ToDouble(ResultList.SelectedValue);
            result = (n * factor) / outfactor;

            if (n < 5E-318 || n > 1E+302)
            {
                errorComment.Text = "Please enter a positive number within the range (5E-318 < n < 1E+302)";
                outputBox.Text = "";
            }
            else
            {
                outputBox.Text = result.ToString();
                errorComment.Text = "";


            }
        }
        catch (Exception ee)
        {
            outputBox.Text = "";
            errorComment.Text = "Please enter a positive number within the range (5E-318 < n < 1E+302)";
            Console.WriteLine("{0} Exception caught.", ee);
        }
    }
}