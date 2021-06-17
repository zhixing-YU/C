using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["user"] == null)
            {
                Label1.Text = "訪客";
            }
            else
            {
                Label1.Text = HttpContext.Current.Request.Cookies["user"].Value;
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("user");
            cookie.Expires = DateTime.Now.AddDays(-1);
            Response.Cookies.Add(cookie);
            Response.Redirect("Default.aspx");
        }
    }
}