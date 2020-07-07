using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rasta.Web.Models.Employee
{
    public class RequestFilterEmployee
    {
        public RequestSearchEmployeeInfo Filters { get; set; }
        public int? Take { get; set; }
        public int? Skip { get; set; }
    }
}