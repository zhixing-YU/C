using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class login : Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                string local = Session["local"].ToString();
                Label1.Text = "訪客";
                reg.Text = "登入/註冊";
                Response.Redirect(local);
            }
            else
            {
                user = Session["user"].ToString();
                Label1.Text = user;
                reg.Text = "登出";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Default.aspx");

        }
    }
}