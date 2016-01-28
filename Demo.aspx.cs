using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Specialized;

public partial class Demo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            NameValueCollection inputs = Request.Form;

            String Last_Name = inputs["tbLastName"];
            String First_Name = inputs["tbFirstName"];
            String Gender = inputs["genderButtons"];
            String CSE_Dept_Major = inputs["cbCseStudent"];
            String Classification = inputs["ddClass"];
            //Reset_Form(); 
        }
        else
        {
            tbLastName.Focus(); //sets the focus cursor to the first text box
        }
    }

    //to clear all inputs
    protected void Reset_Form() 
    {
        tbLastName.Text = "";
        tbFirstName.Text = "";
        rbUndisclosed.Checked = true;
        cbCseStudent.Checked = false;
        ddClass.SelectedIndex = 0;
        btnSubmit.Enabled = false;
        tbLastName.Focus(); 
    }


    //check if submit should be enabled
    protected void tbLastName_TextChanged(object sender, EventArgs e)
    {
        if (tbLastName.Text.Length > 0 && tbFirstName.Text.Length > 0)
        {
            btnSubmit.Enabled = true; 
        }
    }

    //check if submit should be enabled
    protected void tbFirstName_TextChanged(object sender, EventArgs e)
    {
        if (tbLastName.Text.Length > 0 && tbFirstName.Text.Length > 0)
        {
            btnSubmit.Enabled = true;
        }
    }

    //want to reset everything when the submit button is clicked
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Reset_Form();
    }
}