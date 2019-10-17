using System;
using System.Collections.Generic;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        errorComment.Text = "";
        int totalvotes = 0;

        DataView dv = (DataView)VoteData.Select(DataSourceSelectArguments.Empty);
        TableRow r = new TableRow();
        TableCell c1 = new TableCell();
        TableCell c2 = new TableCell();
        TableCell c3 = new TableCell();
        r.Cells.Add(c1);
        r.Cells.Add(c2);
        r.Cells.Add(c3);
        c1.BorderWidth = 1;
        c1.BorderColor = Color.Black;
        c1.BackColor = Color.LightGray;
        c1.Width = 180;
        c2.BorderWidth = 1;
        c2.BorderColor = Color.Black;
        c2.BackColor = Color.LightGray;
        c2.Width = 180;
        c3.BorderWidth = 1;
        c3.BorderColor = Color.Black;
        c3.BackColor = Color.LightGray;
        c3.Width = 180;
        c1.Text = "Candidate";
        c2.Text = "Votes";
        c3.Text = "Vote Percentage";
        VoteTable.Rows.Add(r);
        foreach (DataRow dr in dv.Table.Rows)
        {
            totalvotes = totalvotes + Convert.ToInt32(dr["Count"]);
        }
        if(totalvotes != 0)
        {
            foreach (DataRow dr in dv.Table.Rows)
            {
                r = new TableRow();
                c1 = new TableCell();
                c2 = new TableCell();
                c3 = new TableCell();
                r.Cells.Add(c1);
                r.Cells.Add(c2);
                r.Cells.Add(c3);
                c1.BorderWidth = 1;
                c1.BorderColor = Color.Black;
                c1.BackColor = Color.White;
                c1.Width = 180;
                c2.BorderWidth = 1;
                c2.BorderColor = Color.Black;
                c2.BackColor = Color.White;
                c2.Width = 180;
                c3.BorderWidth = 1;
                c3.BorderColor = Color.Black;
                c3.BackColor = Color.White;
                c3.Width = 180;
                c1.Text = dr["Candidate"].ToString();
                c2.Text = dr["Count"].ToString();
                double percent = Math.Round(100 * (Convert.ToDouble(Convert.ToDouble(dr["Count"]) / totalvotes)), 2);
                c3.Text = percent.ToString() + "%";
                VoteTable.Rows.Add(r);
            }
        }
        else
        {
            errorComment.Text = "No votes recorded yet";
        }
    }

    protected void returnButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}