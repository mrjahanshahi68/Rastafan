using Rasta.Common.Entities.Security;
using Rasta.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Rasta.Common.AppConstants;

namespace Rasta.DataAccess.Security.MapConfigurations
{
	public class UserRoleMapConfig : EntityMapConfig<UserRole>
	{
		public UserRoleMapConfig()
		{
			Property(e => e.UserId);
			Property(e => e.RoleId);

			ToTable("UserRoles");
		}
	}
}
