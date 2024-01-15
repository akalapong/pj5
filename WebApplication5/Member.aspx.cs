using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Member : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsLoggedIn())
            {
                Response.Redirect("Login.aspx");
            }
        }

        private bool IsLoggedIn()
        {
            return Session["Logined"] != null && int.Parse(Session["Logined"].ToString()) == 1;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            Response.Redirect("Login.aspx");
        }
    }
}