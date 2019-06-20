using LitJson;
using System;

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

        private class ResultData
        {
            private int _code;

            public int code
            {
                get { return _code; }
                set { _code = value; }
            }

            private String _msg;

            public String msg
            {
                get { return _msg; }
                set { _msg = value; }
            }
            private Object _data;

            public Object data
            {
                get { return _data; }
                set { _data = value; }
            }

            public ResultData(int code, String msg)
            {
                _code = code;
                _msg = msg;
                _data = null;
            }

            public ResultData(String msg, Object data)
            {
                _code = 0;
                _msg = msg;
                _data = data;
            }

            public ResultData(Object data)
            {
                _code = 0;
                _msg = "success";
                _data = data;
            }
        }

        private class ResultRows : ResultData
        {

            private long _total;

            public long total
            {
                get { return _total; }
                set { _total = value; }
            }
            private Object _rows;

            public Object rows
            {
                get { return _rows; }
                set { _rows = value; }
            }

            public ResultRows(int code, String msg, long total, Object rows)
                : base(code, msg)
            {
                _rows = rows;
                _total = total;
            }

            public ResultRows(String msg, long total, Object rows)
                : base(0, msg)
            {
                _rows = rows;
                _total = total;
            }

            public ResultRows(long total, Object rows)
                : base(0, "success")
            {
                _rows = rows;
                _total = total;
            }
        }
    }
}