using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class registered: Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "root" && TextBox2.Text == "123456")
            {
                HttpCookie cookie = new HttpCookie("user");
                cookie.Value = TextBox1.Text;
                HttpContext.Current.Response.Cookies.Add(cookie);
                Response.Redirect("Default.aspx");
            }
            else {
                Label2.Text = "帳號或密碼錯誤!!";
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}