using Rasta.Common.Entities.Security;
using Rasta.DataAccess.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;

namespace Rasta.Web.Security
{
	public interface ISecurityProvider
	{

		bool SignIn(string userName, string password);
		void SignOut();
        string GenerateToken(string userName, int expireMinutes = 20);
        ClaimsPrincipal GetPrinciple(string token);

    }
}