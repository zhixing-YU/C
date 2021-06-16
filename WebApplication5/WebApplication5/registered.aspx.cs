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
            //創一個變數存放從config內的資訊，其實也可不用創立這變數，直接放進SqlConnection內即可。
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;

            //new一個SqlConnection物件，是與資料庫連結的通道(其名為Connection)，以s_data內的連接字串連接所對應的資料庫。
            SqlConnection connection = new SqlConnection(s_data);

            //new一個SqlCommand告訴這個物件準備要執行什麼SQL指令
            SqlCommand Command = new SqlCommand($"SELECT * FROM accounts_Mbmbers", connection);

            //與資料庫連接的通道開啟
            connection.Open();

            //new一個DataReader接取Execute所回傳的資料。
            SqlDataReader Reader = Command.ExecuteReader();

            //檢查是否有資料列
            if (Reader.HasRows)
            {
                //使用Read方法把資料讀進Reader，讓Reader一筆一筆順向指向資料列，並回傳是否成功。
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
            
            //關閉與資料庫連接的通道
            connection.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}