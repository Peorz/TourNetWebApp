using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TourWebApp
{
    public enum FieldType
    {
        Bit, TinyInt, SmallInt, Int,
        Decimal, Numeric,
        SmallMoney, Money,
        Float, Real,
        SmallDateTime, DateTime,
        Cursor, TimeStamp, Uniqueidentifier,
        Char, VarChar, Text,
        NChar, NVarchar, NText,
        Binary, VarBinary, Image
    }
}