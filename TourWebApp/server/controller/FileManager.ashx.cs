using NetDB.Core;
using Qiniu.Http;
using Qiniu.Storage;
using Qiniu.Util;
using System;
using System.Web;
using TourWebApp.server.config;
using TourWebApp.server.extend;

namespace TourWebApp.server.controller
{
    /// <summary>
    /// FileManager 的摘要说明
    /// </summary>
    public class FileManager : ResultFullAPIHttpHandler
    {
        public override string DeleteProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }

        public override string GetProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }

        public override string PostProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            String filePathStr = request["filePath"];
            Mac mac = new Mac(QiniuConfig.AccessKey, QiniuConfig.SecretKey);
            // 上传文件名
            string key = "doger1";
            // 本地文件路径
            string filePath = filePathStr;
            // 存储空间名
            string Bucket = QiniuConfig.Bucket;
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
            config.Zone = Zone.ZONE_CN_South;
            // 设置 http 或者 https 上传
            config.UseHttps = true;
            config.UseCdnDomains = true;
            config.ChunkSize = ChunkUnit.U512K;
            // 表单上传
            FormUploader target = new FormUploader(config);
            HttpResult result = target.UploadFile(filePath, key, token, null);
            SLog.Out.WriteLine("form upload result: " + result.ToString());
            return result.ToString();
        }

        public override string PutProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }
    }
}