using Qiniu.Storage;
using Qiniu.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TourWebApp.server.config;
using TourWebApp.server.extend;
using TourWebApp.server.utils;

namespace TourWebApp.server.controller
{
    /// <summary>
    /// FIleUp 的摘要说明
    /// </summary>
    public class FIleUp : ResultFullAPIHttpHandler
    {
        public override string DeleteProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }

        public override string GetProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            Mac mac = new Mac(QiniuConfig.AccessKey, QiniuConfig.SecretKey);
            PutPolicy putPolicy = new PutPolicy();
            string Bucket = QiniuConfig.Bucket;
            // 设置要上传的目标空间
            putPolicy.Scope = Bucket;
            // 上传策略的过期时间(单位:秒)
            putPolicy.SetExpires(3600);
            // 文件上传完毕后，在多少天后自动被删除
            putPolicy.DeleteAfterDays = 100;
            string token = Auth.CreateUploadToken(mac, putPolicy.ToJsonString());
            return Result.Ok("", token);
        }

        public override string PostProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            String Hash = request.Params["hash"];
            String Key = request.Params["key"];
            mode.FileInfo fileInfo = new mode.FileInfo();
            fileInfo.FileHash = Hash;
            fileInfo.FileKey = Key;
            fileInfo.UpTime = DateTime.Now;
            int ret = fileInfo.Save();
            if (ret == 1)
            {
                return Result.Ok("", Key);
            }
            else
            {
                return Result.Error("");
            }
        }

        public override string PutProcessRequest(HttpContext context, HttpRequest request, HttpResponse response)
        {
            throw new NotImplementedException();
        }
    }
}