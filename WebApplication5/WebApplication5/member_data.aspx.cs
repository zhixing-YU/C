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
                username.Text = "訪客";
                Response.Redirect(local);
            }
            else
            {
                user = Session["user"].ToString();
                username.Text = user;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Default.aspx");

        }
    }
}