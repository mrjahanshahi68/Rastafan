﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Rasta.Common.Entities.Security
{
	public class UserRole : BaseEntity
	{
		public int UserId { get; set; }
		public int RoleId { get; set; }
	}
}
