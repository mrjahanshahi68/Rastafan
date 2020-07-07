using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Rasta.Common.AppEnums;

namespace Rasta.Common.Entities
{
	public class BaseEntity : IEntity
	{
		public int ID { get; set; }
		public ObjectState ObjectState { get; set; }
	}
}
