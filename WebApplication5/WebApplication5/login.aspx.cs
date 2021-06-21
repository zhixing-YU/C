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
                Label1.Text = "訪客";
                Response.Redirect("Default.aspx");
            }
            else
            {
                user = Session["user"].ToString();
                Label1.Text = user;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Default.aspx");

        }
    }
}