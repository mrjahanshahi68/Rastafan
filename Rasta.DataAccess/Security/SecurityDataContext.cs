using Rasta.DataAccess.Security.MapConfigurations;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Rasta.Common.AppConstants;

namespace Rasta.DataAccess.Security
{
	public class SecurityDataContext : DataContext
	{
		public SecurityDataContext() : base("RastaConnectionString") { }
		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
            modelBuilder.HasDefaultSchema(DatabaseSchema.Security);

			modelBuilder.Configurations.Add(new UserMapConfig());
			modelBuilder.Configurations.Add(new RoleMapConfig());
			modelBuilder.Configurations.Add(new UserRoleMapConfig());

			base.OnModelCreating(modelBuilder);
		}
	}
}
