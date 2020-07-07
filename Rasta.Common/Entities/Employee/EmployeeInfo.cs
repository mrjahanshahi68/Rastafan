using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rasta.Common.Entities.Employee
{
    public class EmployeeInfo : BaseEntity,ILogicalDeletable
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
