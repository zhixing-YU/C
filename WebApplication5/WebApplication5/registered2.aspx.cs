using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class registered2: Page
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
                    if (string.IsNullOrEmpty(TextBox1.Text) != true && string.IsNullOrEmpty(TextBox2.Text) != true && string.IsNullOrEmpty(TextBox3.Text) != true)
                    {
                        if (TextBox1.Text != Reader["會員帳號"].ToString())   
                        {
                            bool IsEmail = Regex.IsMatch(TextBox3.Text, @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
                            if (TextBox3.Text != Reader["郵件地址"].ToString())             
                            {
                                if (IsEmail)
                                {
                                    HttpCookie cookie = new HttpCookie("user");
                                    cookie.Value = TextBox1.Text;
                                    HttpContext.Current.Response.Cookies.Add(cookie);
                                    //connection.Close();

                                    string sql = $"insert into [accounts_Mbmbers](會員帳號,密碼,郵件地址) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')";
                                    //connection.Open();
                                    SqlCommand Command2 = new SqlCommand(sql, connection);
                                    Command2.ExecuteNonQuery();
                                    connection.Close();

                                    Response.Redirect("Default.aspx");      
                                }
                                else Label2.Text = "請輸入正確的E-mail格式"; connection.Close();
                            }
                            else Label2.Text = "已存在該E-mail用戶"; connection.Close();
                        }
                        else Label2.Text = "已存在重複帳號"; connection.Close();
                    }
                    else Label2.Text = "上方欄位不可為空"; connection.Close();
                }
            }
        }
    }
}