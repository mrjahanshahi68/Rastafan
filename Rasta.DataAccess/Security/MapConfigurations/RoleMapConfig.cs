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
	public class RoleMapConfig : EntityMapConfig<Role>
	{
		public RoleMapConfig()
		{
			Property(e => e.Name);
			Property(e => e.IsDeleted);

			ToTable("Roles");
		}
	}
}
