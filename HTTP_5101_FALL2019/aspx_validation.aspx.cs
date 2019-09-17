using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTTP_5101_FALL2019
{
    public partial class aspx_validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.IsPostBack asks if we arrived here because the form posted to itself.
            //When we first visit the page, it's by using the URL
            //When we hit the button and client side validation passes
            //Then we arrive at the page a second time, and we can run the code here.
            if (Page.IsPostBack)
            {
                //Re-validates the code on the server side. can never be too careful!
                Page.Validate();
                
                //If everything seems okay, we can proceed.
                if (Page.IsValid)
                {

                    

                    //Guest_Fname is the C# variable we just created
                    //guest_lfname is the information pulled from the webform (.aspx) page.
                    string Guest_Fname = guest_fname.Text.ToString();
                    string Guest_Lname = guest_lname.Text.ToString();
                    string Guest_Costumetype = guest_costumetype.SelectedValue.ToString();
                    int Guest_Friendcount = Convert.ToInt32(guest_friendcount.Text);
                    string Guest_Phone = guest_phone.Text.ToString();

                    //We can use an if statement to adjust our code depending on the value.
                    //todo; write an if statement that checks to see if the person applied is named "Gavin Smith"
                    //if they are, tell them that they are not invited!

                    //This uses server side code to put information into the section with id confirmbox
                    //it works incredibly similarly to JavaScript document.getElementById
                    //They are not the same!
                    confirmbox.InnerHtml = "Thank you for RSVPing! Your Summary is as follows: <br>";

                    //Now we are putting information into our confirmbox.
                    // the "+=" sign means we are adding information without wiping previous information.
                    confirmbox.InnerHtml += " First Name: " + Guest_Fname + "<br>";
                    confirmbox.InnerHtml += " Last Name: " + Guest_Lname + "<br>";
                    confirmbox.InnerHtml += " Costume Type: " + Guest_Costumetype + "<br>";

                    //todo; write an if statement that checks if the guest count is 0
                    //if 0, write "You'll make friends at the party"
                    //if 1, write "Glad you found a friend!"
                    //if 2, write "three's a crowd, isn't it?"
                    confirmbox.InnerHtml += " You are bringing " + Guest_Friendcount.ToString() + " friend(s) " + "<br>";
                    confirmbox.InnerHtml += " We can reach you at: " + Guest_Phone;

                }
            }
        }
    }
}