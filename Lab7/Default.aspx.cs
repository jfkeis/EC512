using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        errorLabel.Text = "";
        if (User.Identity.IsAuthenticated)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            hello.Text = User.Identity.Name;

        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Panel1.Visible = true;
        Panel2.Visible = false;
    }

    protected void PostButton_Click(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            errorLabel.Text = "";
            Response.Redirect("Private/Default.aspx");
        }
        else
        {
            errorLabel.Text = "You must be logged in to make a post";
        }
    }
}