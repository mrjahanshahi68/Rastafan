using Rasta.Common.Entities.Employee;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rasta.DataAccess;
using Rasta.DataAccess.Employee;

namespace Rasta.Domain.Employee
{
	public class EmployeeInfoBusinessRule : BaseBusinessRule<EmployeeInfo>
	{
		public EmployeeInfoBusinessRule()
		{
			UnitOfWork = new EmployeeUnitOfWork();
		}
		public EmployeeInfoBusinessRule(IUnitOfWork unitOfWork):base(unitOfWork)
		{
		}
		public async Task<List<EmployeeInfo>> GetSectionListAsync()
		{
			return await Repository.Queryable().ToListAsync();
		}
	}
}
