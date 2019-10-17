using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Private_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        if(CommentBox.Text != "")
        {
            try
            {
                DateTime localDate = DateTime.Now;
                DateField.Value = localDate.ToString();
                UserField.Value = User.Identity.Name;
                CommentField.Value = " " + CommentBox.Text;
                CommentField.Value = CommentField.Value.Replace("\r\n", "<br /> ");
                errorLabel.Text = "";
                Comments.Insert();
                Response.Redirect("~/Default.aspx");
            }
            catch (Exception ee)
            {
                errorLabel.Text = "Failed to add post";
            }
        }
        else
        {
            errorLabel.Text = "Cannot post blank message";
        }
        
        
    }

    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        errorLabel.Text = "";
        CommentBox.Text = "";
    }
}