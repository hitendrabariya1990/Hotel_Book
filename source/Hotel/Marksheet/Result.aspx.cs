using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        int mark1 = Convert.ToInt16(txtmark1.Value);
        int mark2 = Convert.ToInt16(txtmark1.Value);
        int mark3 = Convert.ToInt16(txtmark3.Value);
        if (mark1 > 0 && mark2 > 0 && mark3 > 0)
        {
            int total = mark1 + mark2 + mark3;
            string grade = ""; 
            decimal per = total * 100 / 300;
            percentage.InnerText ="Percentage:"+ per.ToString();

            if(per >= 35 && per < 50)
            {
                grade += "c";
            }
            else if(per >= 50 && per < 65)
            {
                grade += "B";
            }

            else if(per >= 65 && per < 100)
            {
                grade += "a";
            }
            else
            {
                grade += "fail";
            }

            gradetxt.InnerText ="GRADE:"+ grade;

        }
    
        
    }
}