using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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
                reg.Text = "登入/註冊";
            }
            else
            {
                user = Session["user"].ToString();
                Label1.Text = user;
                reg.Text = "登出";
            }
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(s_data);
            string sql_load = "select * from accounts_Mbmbers where 會員帳號 ='" + Session["user"] + "'";
            string sql_load_orders;

            SqlCommand command_load = new SqlCommand(sql_load, connection);
            connection.Open();
            Dictionary<string, string> shop_list_dic = new Dictionary<string, string>();

            SqlDataReader Reader = command_load.ExecuteReader();
            if (Reader.HasRows)
            {
                if (Reader.Read())
                {
                    Session["id"] = Reader["id"].ToString();
                    
                    sql_load_orders = "select * from Orders where mbmbers_id = " + Reader["id"].ToString();
                    Reader.Close();
                    SqlCommand command_load_orders = new SqlCommand(sql_load_orders, connection);

                    SqlDataReader Reader_2 = command_load_orders.ExecuteReader();
                    
                    if (Reader_2.HasRows)
                    {
                        while (Reader_2.Read())
                        {
                            shop_list_dic.Add(Reader_2["order_number"].ToString(), Reader_2["購買清單"].ToString());
                        }
                    }
                    Reader_2.Close();
                }
            }            
            connection.Close();
            string str1 = "";
            string str2 = "";
            //Label32.Text = shop_list_dic.Keys.ToString();

            foreach (var a in shop_list_dic.Keys)
            {
                str1 = a.ToString() +  "\n";
                foreach (var c in shop_list_dic[a]) {
                    str1 = str1.ToString() + c.ToString();
                    //if c.ToString;

                }
                //b = b.ToString() + "ya" + a.ToString();


            }
            Label32.Text = str1;

        }
    }
}