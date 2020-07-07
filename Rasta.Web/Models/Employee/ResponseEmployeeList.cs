using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rasta.Web.Models.Employee
{
    public class ResponseEmployeeList
    {
        public List<EmployeeInfoVM> Data { get; set; }
        public int Count { get; set; }
        public int TotalCount { get; set; }
        public int Take { get; set; }
        public int Skip { get; set; }
    }
}