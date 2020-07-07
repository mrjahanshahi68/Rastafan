using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rasta.Web.Models.Employee
{
    public class RequestSearchEmployeeInfo
    {
        public string PersonalCode { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string City { get; set; }
        public string Company { get; set; }
        public bool IsDeleted { get; set; }
    }
}