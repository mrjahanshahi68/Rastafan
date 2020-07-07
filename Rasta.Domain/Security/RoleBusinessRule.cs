using Rasta.Common.Entities.Security;
using Rasta.DataAccess;
using Rasta.DataAccess.Security;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rasta.Domain.Security
{
	public class RoleBusinessRule : BaseBusinessRule<Role>
	{
		public RoleBusinessRule() : base()
        {
            UnitOfWork = new SecurityUnitOfWork();
        }
		public RoleBusinessRule(IUnitOfWork unitOfWork) : base(unitOfWork) { }
		public List<Role> FindRolesByUserId(int userId)
		{
			var userRoleQuery = UnitOfWork.Repository<UserRole>().Queryable();
			var roleQuery = Queryable();

			var query = from role in roleQuery
						join userRole in userRoleQuery on role.ID equals userRole.RoleId
						where userRole.UserId == userId
						select role;
			var result =  query.ToList();
			return result;
		}
	}
}
