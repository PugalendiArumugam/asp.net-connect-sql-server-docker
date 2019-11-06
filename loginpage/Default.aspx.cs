using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace loginpage
{

    public partial class Default : System.Web.UI.Page
    {
    int Count;
    protected void Page_Load(object sender, EventArgs e)
    {
      //TextBox t = new TextBox();
      //Button b = new Button
      //{
      //  Text = "Display"
      //};
      //Panel1.Controls.Add(t);
      //Panel1.Controls.Add(b);
      //Panel1.Visible = true;
      //Label5.Text = "User Namexxx";
    }

    public void Button1_Clicked(object sender, EventArgs args)
    {
            button1.Text = "You clicked me";
            login.Text = "Login page";

      genderId.Text = "";
      if (RadioButton1.Checked)
      {
        genderId.Text = "Your gender is " + RadioButton1.Text;
      }
      else if (RadioButton1.Checked) {
          genderId.Text = "Your gender is " + RadioButton2.Text;
        }

      Count = int.Parse(hfield1.Value);
      Count += 1;
      Response.Write("Hit Count" + Count);
      hfield1.Value = Count.ToString();
    }

    public void Button2_Clicked (object sender, EventArgs args)
    {
      int Count1 = 0;
      if (ViewState["Counter"]==null)
        Count1 += 1;
      else
        Count1 = ((int)ViewState["Counter"]) + 1;
      ViewState["Counter"] = Count1;
      Response.Write("Page Hit Count" + Count1);

    }
  }
}

