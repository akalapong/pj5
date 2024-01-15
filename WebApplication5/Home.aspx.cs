using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckAge(ReadSession());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int years = DateTime.Now.Year;
            int age = years - int.Parse(txtYear.Text);
            WriteSession(age);
            CheckAge(ReadSession());
        }

        private void WriteCookie(int age)
        {
            HttpCookie userCookie = new HttpCookie("UserSetting");
            userCookie.Value = age.ToString();
            userCookie.Expires = DateTime.Now.AddSeconds(10);
            Response.Cookies.Add(userCookie);
        }

        private void WriteSession(int age)
        {
            Session["UserAge"] = age;
        }

        private int ReadSession()
        {
            if (Session["UserAge"] == null)
            {
                return 0;
            }
            return int.Parse(Session["UserAge"].ToString());
        }
        private int ReadCookie()
        {
            HttpCookie userCookie = Request.Cookies["UserSetting"];
            return int.Parse(userCookie.Value);
        }

        private void CheckAge(int age)
        {
            if (age >= 15)
            {
                //Server.Transfer("Member.aspx");
                Response.Redirect("Member.aspx");
            }
            else
            {
                Response.Write("Error!");
            }
        }
    }
}