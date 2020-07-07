using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Rasta.Common.AppEnums;

namespace Rasta.Common.Entities
{
	public interface IEntity
	{
		int ID { get; set; }
		ObjectState ObjectState { get; set; }
	}
}
