using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckLogin();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUser.Text;
            string password = txtPassword.Text;
            if (username == "admin" && password == "admin")
            {
                WriteSession();
                Response.Redirect("Member.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('กรุณากรอก User และ Password ให้ถูกต้อง');", true);
            }
        }
        private void WriteSession()
        {
            Session["Logined"] = 1;
        }
        private int ReadSession()
        {
            if (Session["Logined"] == null)
            {
                return 0;
            }
            return int.Parse(Session["Logined"].ToString());
        }

        private void CheckLogin()
        {
            int login = ReadSession();
            if (login == 1)
            {
                Response.Redirect("Member.aspx");
            }
        }
    }
}