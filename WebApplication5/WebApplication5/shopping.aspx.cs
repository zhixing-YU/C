using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class shopping: Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            string localPath = Request.Url.LocalPath;
            Session["local"] = localPath;
            if (Session["user"] == null)
            {
                Label1.Text = "訪客";
            }
            else
            {
                user = Session["user"].ToString();
                Label1.Text = user;
            }
        }
    }
}