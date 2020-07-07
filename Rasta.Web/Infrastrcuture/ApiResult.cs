using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Rasta.Common.AppEnums;

namespace Rasta.Web.Infrastrcuture
{
	public class ApiResult
	{
		public ResultCode ResultCode { get; set; }
		public List<string> Messages { get; set; }
		public object Data { get; set; }
	}
}