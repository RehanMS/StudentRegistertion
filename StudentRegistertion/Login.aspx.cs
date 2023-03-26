using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistertion
{
    public partial class Login1 : System.Web.UI.Page
    {
        StudentDbContex _dbContex = new StudentDbContex();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string UserName = txtluname.Text;
            string Password = txtpwd.Text;
            Login1 model= new Login1();
            model. = UserName;
        }
    }
}