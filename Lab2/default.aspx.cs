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

    protected void GetButton_Click(object sender, EventArgs e)
    {
        DateTime localDate = DateTime.Now;
        Console.WriteLine(localDate);
        timeBox.Text = localDate.ToShortTimeString();
        dateBox.Text = localDate.ToShortDateString();
    }
}