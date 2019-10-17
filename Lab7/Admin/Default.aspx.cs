using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;


public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        hiddenUserName.Value = User.Identity.Name;
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        DataRow row = dv.Table.Rows[0];
        if ((short)row["Role"] != 1)
        {
            //Not an admin
            Response.Redirect("~/default.aspx");  //or go to another page
        }

    }
}