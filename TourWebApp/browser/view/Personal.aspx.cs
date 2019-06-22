using System;
using TourWebApp.server.mode;
using TourWebApp.server.utils;

namespace TourWebApp.browser.view
{
    public partial class Personal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Find();
        } 
        //显示信息
        public void Find()
        {
            if (!Page.IsPostBack)
            {
                UserInfo user = Session["user"] as UserInfo;
                user.Find();
                TextBox1.Text = user.Nick;//用户名
                username.Text = user.Nick;
                TextBox2.Text = user.Email;//邮箱
                if (user.Sex == 1)//性别
                {
                    RadioButton1.Checked = true;
                }
                else if (user.Sex == 0)
                {
                    RadioButton2.Checked = true;
                }
            }
        }
        protected void update_click(object sender, EventArgs e)
        {
            UserInfo user = Session["user"] as UserInfo;
            user.Nick = TextBox1.Text;
            user.Email = TextBox2.Text;
            if (RadioButton2.Checked)
            {
                user.Sex = 0;
            }
            else if (RadioButton1.Checked)
            {
                user.Sex = 1;
            }
            //user.Sex = 1;
            user.Update();           
            Response.AddHeader("Refresh", "0");
        }
    }
}