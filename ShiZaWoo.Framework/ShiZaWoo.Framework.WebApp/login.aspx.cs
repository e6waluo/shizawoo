using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShiZaWoo.Framework.BusinessLayer;


namespace ShiZaWoo.Framework.WebApp
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Base_UsersBLL user = new Base_UsersBLL();
            bool lstatus = user.ValidateUserLogin(LoginForm_email.Text, LoginForm_password.Text);
            
                Response.Redirect("/Admin/Default.aspx");
          
        }
    }
}