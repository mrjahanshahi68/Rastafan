using Rasta.Common.Entities.Employee;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rasta.DataAccess.Employee.MapConfigurations
{
    class EmployeeInfoMapConfig : EntityMapConfig<EmployeeInfo>
    {
        public EmployeeInfoMapConfig()
        {

            Property(e => e.PersonalCode).IsRequired();
            Property(e => e.FirstName).IsRequired();
            Property(e => e.LastName).IsRequired();
            Property(e => e.Email).IsRequired();
            Property(e => e.PhoneNumber);
            Property(e => e.City);
            Property(e => e.Company);
            Property(e => e.IsDeleted).IsRequired();

            ToTable("Employees");

        }
    }
}
