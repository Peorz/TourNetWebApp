using System;
using TourWebApp.server.mode;
using TourWebApp.server.utils;

namespace TourWebApp.browser.view
{
    public partial class Personal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserInfo user = new UserInfo();
            user.ID = "f6d310df6e6840db96badf968a37bbce";
            user.Find();
            TextBox1.Text = user.Nick;//用户名
            TebName.Text = user.Nick;//修改密码页面的用户名
            //username.Text = user.Nick;
            TextBox2.Text = user.Email;//邮箱
            if(user.Sex==1)//性别
            {
                RadioButton1.Checked = true;
            }
            if (user.Sex == 0)
            {
                RadioButton2.Checked = true;
            }
        }

        protected void update_click(object sender, EventArgs e)
        {
            
            UserInfo user = new UserInfo();
            user.ID = "f6d310df6e6840db96badf968a37bbce";
            
            user.Nick = TextBox1.Text;
            user.Update();
           
        }
    }
}