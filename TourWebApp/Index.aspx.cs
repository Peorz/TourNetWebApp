using NetDB.Core;
using NetDB.Core.Utils;
using Qiniu.Http;
using Qiniu.Storage;
using Qiniu.Util;
using System;
using System.Web.Services;

namespace TourWebApp
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [WebMethod]
        public static String Add()
        {
            Mac mac = new Mac("DEYXgEtq-OqRb2YRjkI_4dPvEeFx1ldPXDlh7w_R", "PVltxogqGyR-Ib8CBJMDieNsJkl6nccPIhww3TwG");
            // 上传文件名
            string key = "doger";
            // 本地文件路径
            string filePath = @"\\Mac\Home\Documents\VSProjects\TourNetWebApp\TourWebApp\browser\static\img\16849027.jpeg";
            // 存储空间名
            string Bucket = "tour_net_db";
            // 设置上传策略，详见：https://developer.qiniu.com/kodo/manual/1206/put-policy
            PutPolicy putPolicy = new PutPolicy();
            // 设置要上传的目标空间
            putPolicy.Scope = Bucket;
            // 上传策略的过期时间(单位:秒)
            putPolicy.SetExpires(3600);
            // 文件上传完毕后，在多少天后自动被删除
            putPolicy.DeleteAfterDays = 1;
            // 生成上传token
            string token = Auth.CreateUploadToken(mac, putPolicy.ToJsonString());
            Config config = new Config();
            // 设置上传区域
            config.Zone = Zone.ZONE_CN_East;
            // 设置 http 或者 https 上传
            config.UseHttps = true;
            config.UseCdnDomains = true;
            config.ChunkSize = ChunkUnit.U512K;
            // 表单上传
            FormUploader target = new FormUploader(config);
            HttpResult result = target.UploadFile(filePath, key, token, null);
            SLog.Out.WriteLine("form upload result: " + result.ToString());
            return "xlh";
        }
    }
}