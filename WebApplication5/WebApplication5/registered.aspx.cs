using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;

            SqlConnection connection = new SqlConnection(s_data);

            SqlCommand Command = new SqlCommand($"SELECT * FROM accounts_Mbmbers", connection);

            connection.Open();

            SqlDataReader Reader = Command.ExecuteReader();

            if (Reader.HasRows)
            {
                if (Reader.Read())
                {
                    if (TextBox1.Text == Reader["會員帳號"].ToString() && TextBox2.Text == Reader["密碼"].ToString())
                    {
                        HttpCookie cookie = new HttpCookie("user");
                        cookie.Value = TextBox1.Text;
                        HttpContext.Current.Response.Cookies.Add(cookie);
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        Label2.Text = "帳號或密碼錯誤!!";
                    }
                }
            }
            
            connection.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}