using Rasta.Common.Entities.Security;
using Rasta.DataAccess;
using Rasta.DataAccess.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rasta.Domain.Security
{
	public class UserBusinessRule : BaseBusinessRule<User>
	{
		public UserBusinessRule() : base()
        {
            UnitOfWork = new SecurityUnitOfWork();
        }
		public UserBusinessRule(IUnitOfWork unitOfWork) : base(unitOfWork) { }
		public User FindUserByUserName(string userName)
		{
			return Queryable().Where(e => e.UserName == userName).SingleOrDefault();
		}
		 
	}
}
