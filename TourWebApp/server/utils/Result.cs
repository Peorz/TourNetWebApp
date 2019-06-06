using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using LitJson;

namespace TourWebApp.server.utils
{
    public class Result
    {

        public static String Ok(String msg, String data)
        {
            ResultData resultData = new ResultData(msg, data);
            return JsonMapper.ToJson(resultData);
        }

        public static String Ok(String msg, long total, Object rows)
        {
            ResultRows resultRows = new ResultRows(total, rows);
            return JsonMapper.ToJson(resultRows);
        }

        public static String Error(int code, String msg)
        {
            ResultData resultData = new ResultData(code, msg);
            return JsonMapper.ToJson(resultData);
        }

        public static String Error(String msg)
        {
            ResultData resultData = new ResultData(1, msg);
            return JsonMapper.ToJson(resultData);
        }

        public class ResultData
        {
            private int code;
            private long Total;
            private String msg;
            private String data;

            public int Code { get => code; set => code = value; }
            public string Msg { get => msg; set => msg = value; }
            public string Data { get => data; set => data = value; }

            public ResultData(int code, String msg)
            {
                Code = code;
                Msg = msg;
                Data = null;
            }

            public ResultData(String msg, String data)
            {
                Code = 0;
                Msg = msg;
                Data = data;
            }

            public ResultData(String data)
            {
                Code = 0;
                Msg = "success";
                Data = data;
            }
        }

        public class ResultRows
        {
            private int code;
            private String msg;
            private long total;
            private Object rows;

            public int Code { get => code; set => code = value; }
            public string Msg { get => msg; set => msg = value; }
            public object Rows { get => rows; set => rows = value; }
            public long Total { get => total; set => total = value; }

            public ResultRows(int code, String msg, long total, Object rows)
            {
                Code = code;
                Msg = msg;
                Rows = rows;
                Total = total;
            }

            public ResultRows(String msg, long total, Object rows)
            {
                Code = 0;
                Msg = msg;
                Rows = rows;
                Total = total;
            }

            public ResultRows(long total, Object rows)
            {
                Code = 0;
                Msg = "success";
                Rows = rows;
                Total = total;
            }
        }
    }
}