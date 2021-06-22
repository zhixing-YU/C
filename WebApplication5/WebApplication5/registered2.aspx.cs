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
                    if (string.IsNullOrEmpty(TextBox1.Text) != true && string.IsNullOrEmpty(TextBox2.Text) != true && string.IsNullOrEmpty(TextBox3.Text) != true && string.IsNullOrEmpty(TextBox4.Text) != true && string.IsNullOrEmpty(TextBox5.Text) != true && string.IsNullOrEmpty(TextBox5.Text) != true && string.IsNullOrEmpty(TextBox6.Text) != true)
                    {
                        if (TextBox1.Text != Reader["會員帳號"].ToString())
                        {
                            if (TextBox2.Text == TextBox7.Text)
                            {
                                bool IsEmail = Regex.IsMatch(TextBox3.Text, @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
                                if (TextBox3.Text != Reader["郵件地址"].ToString())
                                {
                                    if (IsEmail)
                                    {
                                        HttpCookie cookie = new HttpCookie("user");
                                        cookie.Value = TextBox1.Text;
                                        HttpContext.Current.Response.Cookies.Add(cookie);
                                        connection.Close();

                                        string ss_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
                                        SqlConnection connection2 = new SqlConnection(ss_data);
                                        string sql = $"insert into [accounts_Mbmbers](會員帳號,密碼,郵件地址,會員姓名,連絡電話,會員地址) values(@user,@pass,@email,@name,@phone,@adress)";
                                        connection2.Open();
                                        SqlCommand Command2 = new SqlCommand(sql, connection2);
                                        Command2.Parameters.Add("@user", SqlDbType.NVarChar);
                                        Command2.Parameters["@user"].Value = TextBox1.Text;
                                        Command2.Parameters.Add("@pass", SqlDbType.NVarChar);
                                        Command2.Parameters["@pass"].Value = TextBox2.Text;
                                        Command2.Parameters.Add("@email", SqlDbType.NVarChar);
                                        Command2.Parameters["@email"].Value = TextBox3.Text;
                                        Command2.Parameters.Add("@name", SqlDbType.NVarChar);
                                        Command2.Parameters["@name"].Value = TextBox4.Text;
                                        Command2.Parameters.Add("@phone", SqlDbType.NVarChar);
                                        Command2.Parameters["@phone"].Value = TextBox5.Text;
                                        Command2.Parameters.Add("@adress", SqlDbType.NVarChar);
                                        Command2.Parameters["@adress"].Value = TextBox6.Text;
                                        Command2.ExecuteNonQuery();
                                        connection2.Close();

                                        Response.Redirect("Default.aspx");
                                    }
                                    else Label2.Text = "請輸入正確的E-mail格式"; connection.Close();
                                }
                                else Label2.Text = "已存在該E-mail用戶"; connection.Close();
                            }
                            else Label2.Text = "二次輸入密碼錯誤"; connection.Close();
                        }
                        else Label2.Text = "已存在重複帳號"; connection.Close();
                    }
                    else Label2.Text = "上方欄位不可為空"; connection.Close();
                }
            }
        }
    }
}