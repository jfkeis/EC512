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

    public static bool IsPalindrome(long l)
    {
        IEnumerable<char> forwards = l.ToString().ToCharArray();
        return forwards.SequenceEqual(forwards.Reverse());
    }

    protected void generateButton_Click(object sender, EventArgs e)
    {
        errorComment.Text = "";

        int n;
        int count;

        try
        {
            n = Int32.Parse(startBox.Text);
            count = Int32.Parse(countBox.Text);

            if (n < 0 || n > 1000000000 || count < 1 || count > 100)
            {
                errorComment.Text = "Please enter a positive integer within range";
                ResultBox.Items.Clear();
            }
            else
            {
                errorComment.Text = "";
                ResultBox.Items.Clear();
                int c = 0;
                for(int i = n; c<count; i++)
                {
                    if (IsPalindrome(i))
                    {
                        ResultBox.Items.Add(i.ToString());
                        c++;
                    }
                }
                   

            }
        }
        catch (Exception ee)
        {
            ResultBox.Items.Clear();
            errorComment.Text = "Please enter a positive integer within range";
            Console.WriteLine("{0} Exception caught.", ee);
        }


        /*
        public static bool IsPalindromic(long l)
        {
            IEnumerable<char> forwards = l.ToString().ToCharArray();
            return forwards.SequenceEqual(forwards.Reverse());
        }

        public static void Main()
        {
            long n = 0;
            while (n<)
            {
                if (IsPalindromic(n))
                    Console.WriteLine("" + n);
                n++;
            }
        }
        */
    }
}