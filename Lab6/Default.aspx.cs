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
        Response.Redirect("current.aspx");
    }

    protected void voteButton_Click(object sender, EventArgs e)
    {
        if (CandidateList.SelectedItem != null)
        {
            try
            {
                errorComment.Text = "";
                VoteData.Update();
                Response.Redirect("current.aspx");
            }
            catch (Exception ee)
            {
                errorComment.Text = ee.ToString();
            }
        }
        else
        {
            errorComment.Text = "Please select a candidate";
        }
            
    }
}