using Rasta.DataAccess;
using Rasta.DataAccess.Employee.MapConfigurations;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Rasta.Common.AppConstants;

namespace Rasta.DataAccess.Employee
{
	public class EmployeeDataContext : DataContext
	{
		public EmployeeDataContext() : base("RastaConnectionString") { }
		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
            modelBuilder.HasDefaultSchema(DatabaseSchema.Employee);

            modelBuilder.Configurations.Add(new EmployeeInfoMapConfig());
            
			base.OnModelCreating(modelBuilder);
		}
	}
}
