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
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
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
                        Session["user"] = TextBox1.Text;
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