using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace WebApplication5
{
    public partial class Default : Page
    {
        string user;
        protected void Page_Load(object sender, EventArgs e)
        {
            string localPath = Request.Url.LocalPath;
            Session["local"] = localPath;
            if (Session["user"] == null)
            {
                username.Text = "訪客";
                reg.Text = "登入/註冊";
            }
            else
            {
                user = Session["user"].ToString();
                username.Text = user;
                reg.Text = "登出";
            }

        }

        protected void cpu_product_name_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
                        if (!IsPostBack) {
            }
            string cpu_pid = "";
            //設定讀取的database sheeet 以及字串。
            string database_input = "cpu";
            //------------------------------------
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(s_data);
            SqlCommand command = new SqlCommand("select * from products_" + database_input, connection);
            connection.Open();
            SqlDataReader Reader = command.ExecuteReader();
            Dictionary<string, string> MyDic = new Dictionary<string, string>();
            if (Reader.HasRows)
            {
                while (Reader.Read())
                {
                    MyDic.Add(Reader["id"].ToString(), Reader["價格"].ToString());
                }
            }
            //商品單價設定
            cpu_price_label.Text = MyDic[cpu_product_name_DropDownList.SelectedValue].ToString();

            //產生pid
            cpu_pid = "CPU" + cpu_product_name_DropDownList.SelectedValue.PadLeft(10, '0') + "N" + cpu_item_count_DropDownList.SelectedValue.PadLeft(2, '0');

            cpu_totalPrice_label.Text = (int.Parse(cpu_price_label.Text) * int.Parse(cpu_item_count_DropDownList.SelectedValue)).ToString();
            connection.Close();

            cpu_pid_label.Text = cpu_pid;
            final_total_price_count.Text = (int.Parse(cpu_totalPrice_label.Text) + int.Parse(mdb_totalPrice_label.Text) + int.Parse(mem_totalPrice_label.Text) + int.Parse(hdd_totalPrice_label.Text) + int.Parse(vga_totalPrice_label.Text) + int.Parse(cas_totalPrice_label.Text) + int.Parse(psu_totalPrice_label.Text)).ToString();
        }

        protected void mdb_product_name_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mdb_pid = "";
            //設定讀取的database sheeet 以及字串。
            string database_input = "mdb";
            //------------------------------------
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(s_data);
            SqlCommand command = new SqlCommand("select * from products_" + database_input, connection);
            connection.Open();
            SqlDataReader Reader = command.ExecuteReader();
            Dictionary<string, string> MyDic = new Dictionary<string, string>();
            if (Reader.HasRows)
            {
                while (Reader.Read())
                {
                    MyDic.Add(Reader["id"].ToString(), Reader["價格"].ToString());
                }
            }
            //商品單價設定
            mdb_price_label.Text = MyDic[mdb_product_name_DropDownList.SelectedValue].ToString();

            //產生pid
            mdb_pid = "MDB" + mdb_product_name_DropDownList.SelectedValue.PadLeft(10, '0') + "N" + mdb_item_count_DropDownList.SelectedValue.PadLeft(2, '0');

            mdb_totalPrice_label.Text = (int.Parse(mdb_price_label.Text) * int.Parse(mdb_item_count_DropDownList.SelectedValue)).ToString();
            connection.Close();

            mdb_pid_label.Text = mdb_pid;
            final_total_price_count.Text = (int.Parse(cpu_totalPrice_label.Text) + int.Parse(mdb_totalPrice_label.Text) + int.Parse(mem_totalPrice_label.Text) + int.Parse(hdd_totalPrice_label.Text) + int.Parse(vga_totalPrice_label.Text) + int.Parse(cas_totalPrice_label.Text) + int.Parse(psu_totalPrice_label.Text)).ToString();
        }

        protected void mem_product_name_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string mem_pid = "";
            //設定讀取的database sheeet 以及字串。
            string database_input = "memory";
            //------------------------------------
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(s_data);
            SqlCommand command = new SqlCommand("select * from products_" + database_input, connection);
            connection.Open();
            SqlDataReader Reader = command.ExecuteReader();
            Dictionary<string, string> MyDic = new Dictionary<string, string>();
            if (Reader.HasRows)
            {
                while (Reader.Read())
                {
                    MyDic.Add(Reader["id"].ToString(), Reader["價格"].ToString());
                }
            }
            //商品單價設定
            mem_price_label.Text = MyDic[mem_product_name_DropDownList.SelectedValue].ToString();

            //產生pid
            mem_pid = "MEM" + mem_product_name_DropDownList.SelectedValue.PadLeft(10, '0') + "N" + mem_item_count_DropDownList.SelectedValue.PadLeft(2, '0');

            mem_totalPrice_label.Text = (int.Parse(mem_price_label.Text) * int.Parse(mem_item_count_DropDownList.SelectedValue)).ToString();
            connection.Close();

            mem_pid_label.Text = mem_pid;
            final_total_price_count.Text = (int.Parse(cpu_totalPrice_label.Text) + int.Parse(mdb_totalPrice_label.Text) + int.Parse(mem_totalPrice_label.Text) + int.Parse(hdd_totalPrice_label.Text) + int.Parse(vga_totalPrice_label.Text) + int.Parse(cas_totalPrice_label.Text) + int.Parse(psu_totalPrice_label.Text)).ToString();
        }

        protected void hdd_product_name_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string hdd_pid = "";
            //設定讀取的database sheeet 以及字串。
            string database_input = "hdd";
            //------------------------------------
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(s_data);
            SqlCommand command = new SqlCommand("select * from products_" + database_input, connection);
            connection.Open();
            SqlDataReader Reader = command.ExecuteReader();
            Dictionary<string, string> MyDic = new Dictionary<string, string>();
            if (Reader.HasRows)
            {
                while (Reader.Read())
                {
                    MyDic.Add(Reader["id"].ToString(), Reader["價格"].ToString());
                }
            }
            //商品單價設定
            hdd_price_label.Text = MyDic[hdd_product_name_DropDownList.SelectedValue].ToString();

            //產生pid
            hdd_pid = "HDD" + hdd_product_name_DropDownList.SelectedValue.PadLeft(10, '0') + "N" + hdd_item_count_DropDownList.SelectedValue.PadLeft(2, '0');

            hdd_totalPrice_label.Text = (int.Parse(hdd_price_label.Text) * int.Parse(hdd_item_count_DropDownList.SelectedValue)).ToString();
            connection.Close();

            hdd_pid_label.Text = hdd_pid;
            final_total_price_count.Text = (int.Parse(cpu_totalPrice_label.Text) + int.Parse(mdb_totalPrice_label.Text) + int.Parse(mem_totalPrice_label.Text) + int.Parse(hdd_totalPrice_label.Text) + int.Parse(vga_totalPrice_label.Text) + int.Parse(cas_totalPrice_label.Text) + int.Parse(psu_totalPrice_label.Text)).ToString();
        }

        protected void vga_product_name_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string vga_pid = "";
            //設定讀取的database sheeet 以及字串。
            string database_input = "vga";
            //------------------------------------
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(s_data);
            SqlCommand command = new SqlCommand("select * from products_" + database_input, connection);
            connection.Open();
            SqlDataReader Reader = command.ExecuteReader();
            Dictionary<string, string> MyDic = new Dictionary<string, string>();
            if (Reader.HasRows)
            {
                while (Reader.Read())
                {
                    MyDic.Add(Reader["id"].ToString(), Reader["價格"].ToString());
                }
            }
            //商品單價設定
            vga_price_label.Text = MyDic[vga_product_name_DropDownList.SelectedValue].ToString();

            //產生pid
            vga_pid = "VGA" + vga_product_name_DropDownList.SelectedValue.PadLeft(10, '0') + "N" + vga_item_count_DropDownList.SelectedValue.PadLeft(2, '0');

            vga_totalPrice_label.Text = (int.Parse(vga_price_label.Text) * int.Parse(vga_item_count_DropDownList.SelectedValue)).ToString();
            connection.Close();

            vga_pid_label.Text = vga_pid;
            final_total_price_count.Text = (int.Parse(cpu_totalPrice_label.Text) + int.Parse(mdb_totalPrice_label.Text) + int.Parse(mem_totalPrice_label.Text) + int.Parse(hdd_totalPrice_label.Text) + int.Parse(vga_totalPrice_label.Text) + int.Parse(cas_totalPrice_label.Text) + int.Parse(psu_totalPrice_label.Text)).ToString();
        }

        protected void cas_product_name_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cas_pid = "";
            //設定讀取的database sheeet 以及字串。
            string database_input = "case";
            //------------------------------------
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(s_data);
            SqlCommand command = new SqlCommand("select * from products_" + database_input, connection);
            connection.Open();
            SqlDataReader Reader = command.ExecuteReader();
            Dictionary<string, string> MyDic = new Dictionary<string, string>();
            if (Reader.HasRows)
            {
                while (Reader.Read())
                {
                    MyDic.Add(Reader["id"].ToString(), Reader["價格"].ToString());
                }
            }
            //商品單價設定
            cas_price_label.Text = MyDic[cas_product_name_DropDownList.SelectedValue].ToString();

            //產生pid
            cas_pid = "CAS" + cas_product_name_DropDownList.SelectedValue.PadLeft(10, '0') + "N" + cas_item_count_DropDownList.SelectedValue.PadLeft(2, '0');

            cas_totalPrice_label.Text = (int.Parse(cas_price_label.Text) * int.Parse(cas_item_count_DropDownList.SelectedValue)).ToString();
            connection.Close();

            cas_pid_label.Text = cas_pid;
            final_total_price_count.Text = (int.Parse(cpu_totalPrice_label.Text) + int.Parse(mdb_totalPrice_label.Text) + int.Parse(mem_totalPrice_label.Text) + int.Parse(hdd_totalPrice_label.Text) + int.Parse(vga_totalPrice_label.Text) + int.Parse(cas_totalPrice_label.Text) + int.Parse(psu_totalPrice_label.Text)).ToString();
        }

        protected void psu_product_name_DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string psu_pid = "";
            //設定讀取的database sheeet 以及字串。
            string database_input = "power_supplier";
            //------------------------------------
            string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
            SqlConnection connection = new SqlConnection(s_data);
            SqlCommand command = new SqlCommand("select * from products_" + database_input, connection);
            connection.Open();
            SqlDataReader Reader = command.ExecuteReader();
            Dictionary<string, string> MyDic = new Dictionary<string, string>();
            if (Reader.HasRows)
            {
                while (Reader.Read())
                {
                    MyDic.Add(Reader["id"].ToString(), Reader["價格"].ToString());
                }
            }
            //商品單價設定
            psu_price_label.Text = MyDic[psu_product_name_DropDownList.SelectedValue].ToString();

            //產生pid
            psu_pid = "PSU" + psu_product_name_DropDownList.SelectedValue.PadLeft(10, '0') + "N" + psu_item_count_DropDownList.SelectedValue.PadLeft(2, '0');

            psu_totalPrice_label.Text = (int.Parse(psu_price_label.Text) * int.Parse(psu_item_count_DropDownList.SelectedValue)).ToString();
            connection.Close();

            psu_pid_label.Text = psu_pid;
            final_total_price_count.Text = (int.Parse(cpu_totalPrice_label.Text) + int.Parse(mdb_totalPrice_label.Text) + int.Parse(mem_totalPrice_label.Text) + int.Parse(hdd_totalPrice_label.Text) + int.Parse(vga_totalPrice_label.Text) + int.Parse(cas_totalPrice_label.Text) + int.Parse(psu_totalPrice_label.Text)).ToString();
        }

        protected void shopping_cart_check_buttom_Click(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("registered");
            }
            else {
                if (cpu_pid_label.Text =="" && mdb_pid_label.Text == "" && mem_pid_label.Text =="" && hdd_pid_label.Text =="" && vga_pid_label.Text=="" && cas_pid_label.Text=="" && psu_pid_label.Text=="")
                {

                }
                else {
                    var shop_list = new List<string>();
                    string s_data = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["Computer_productionConnectionString"].ConnectionString;
                    SqlConnection connection = new SqlConnection(s_data);
                    string sql = $"insert into [Orders](mbmbers_id,購買清單) values(@mbmbers_id,@buy_menus)";
                    string sql_load = "select * from accounts_Mbmbers where 會員帳號 ='" + Session["user"] + "'";
                    SqlCommand Command = new SqlCommand(sql, connection);
                    SqlCommand command_load = new SqlCommand(sql_load, connection);
                    connection.Open();


                    SqlDataReader Reader = command_load.ExecuteReader();
                    if (Reader.HasRows)
                    {
                        if (Reader.Read())
                        {
                            Command.Parameters.Add("@mbmbers_id", SqlDbType.Int);
                            Command.Parameters["@mbmbers_id"].Value = Reader["id"].ToString();
                        }
                    }
                    if (cpu_pid_label.Text !="") {
                        shop_list.Add(cpu_pid_label.Text);
                    }
                    if (mdb_pid_label.Text != "")
                    {
                        shop_list.Add(mdb_pid_label.Text);
                    }
                    if (mem_pid_label.Text != "")
                    {
                        shop_list.Add(mem_pid_label.Text);
                    }
                    if (hdd_pid_label.Text != "")
                    {
                        shop_list.Add(hdd_pid_label.Text);
                    }
                    if (vga_pid_label.Text != "")
                    {
                        shop_list.Add(vga_pid_label.Text);
                    }
                    if (cas_pid_label.Text != "")
                    {
                        shop_list.Add(cas_pid_label.Text);
                    }
                    if (psu_pid_label.Text != "")
                    {
                        shop_list.Add(psu_pid_label.Text);
                    }
                    int count = 0;
                    //string shop_list_input;
                    StringBuilder shop_list_input = new StringBuilder();
                    foreach (var shop_lists in shop_list) {
                        count += 1;
                        if (count == 1)
                        {
                            shop_list_input.Append(shop_lists.ToString());
                        }
                        else if ((count != 1) && (count != 0)){
                            shop_list_input.Append("," + shop_lists.ToString());
                        }
                        
                    }



                    Command.Parameters.Add("@buy_menus", SqlDbType.NVarChar);
                    Command.Parameters["@buy_menus"].Value = shop_list_input.ToString();
                    Reader.Close();

                    Command.ExecuteNonQuery();
                    connection.Close();
                }
            }
        }
    }
}