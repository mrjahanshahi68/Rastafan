using Rasta.Common;
using Rasta.Common.Entities;
using Rasta.Common.Entities.Security;
using Rasta.Web.Infrastrcuture;
using Rasta.Domain.Security;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Configuration;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Net.Http;
using System.Security.Claims;
using Rasta.Web.Cache;

namespace Rasta.Web.Security
{
	public class JwtSecurityProvider : ISecurityProvider
	{
        private const string Secret = "db3OIsj+BXE9NZDy0t8W3TcNekrF+2d/1sFnWG4HnV8TZY30iTOdtVWJG8abWvB1GlOgJuQZdcF2Luqm/hccMw==";
        public bool SignIn(string userName, string password)
		{
			var userRule = new UserBusinessRule();
			var user= userRule.FindUserByUserName(userName);
			if (user == null) return false;
			if (user.Password != password.ToMd5().ToBase64()) return false;
			var roles = new RoleBusinessRule().FindRolesByUserId(user.ID);
			user.Roles = roles;
			var appUserInfo = new AppUserInfo
			{
				Context = user,
				UserId = user.ID,
			};
            CacheManager.SetValue(userName, appUserInfo);
            return true;
		}
        public void SignOut()
		{
		}
        public  string GenerateToken(string userName, int expireMinutes = 20)
        {
           
            var symmetricKey = Convert.FromBase64String(Secret);
            var tokenHandler = new JwtSecurityTokenHandler();

            var now = DateTime.UtcNow;
            var securityKey = new SymmetricSecurityKey(symmetricKey);
            var appUserInfo = CacheManager.GetValue(userName) as AppUserInfo;
            var currentUser = appUserInfo.Context;
            var identity = new ClaimsIdentity();
            identity.AddClaim(new Claim(ClaimTypes.Name, userName));
            identity.AddClaim(new Claim("iss", AppConfigurations.Issuer));
            identity.AddClaim(new Claim("email", currentUser.Email));
            string roles = string.Join(",", currentUser.Roles?.Select(e => e.Name));
            identity.AddClaim(new Claim(ClaimTypes.Role, roles));
            //identity
            //    .AddClaims(Enumerable
            //    .Range(0, currentUser.Roles.Count)
            //    .Select(i => new Claim(ClaimTypes.Role, currentUser.Roles[i].Name)));

            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject= identity,
                //Subject = new ClaimsIdentity(new[]
                //        {
                //            new Claim(ClaimTypes.Name, userName),
                //            new Claim("iss",AppConfigurations.Issuer)
                //        }),
                Expires = now.AddMinutes(expireMinutes),
                SigningCredentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256Signature, SecurityAlgorithms.Sha256Digest),
            };

            SecurityToken token = tokenHandler.CreateToken(tokenDescriptor);
            var jwtToken = tokenHandler.WriteToken(token);
            return jwtToken;
        }
        public  ClaimsPrincipal GetPrinciple(string token)
        {
            try
            {

                var tokenHandler = new JwtSecurityTokenHandler();
                var jwtToken = tokenHandler.ReadToken(token) as JwtSecurityToken;
                if (jwtToken == null) return null;

                var symmetricKey = Convert.FromBase64String(Secret);

                var securityKey = new SymmetricSecurityKey(symmetricKey);

                var validationParameters = new TokenValidationParameters()
                {
                    RequireExpirationTime = true,
                    ValidateAudience = false,
                    IssuerSigningKey = securityKey,
                    ValidIssuer = ConfigurationManager.AppSettings["Issuer"],
                };
                var principal = tokenHandler.ValidateToken(token, validationParameters, out _);

                return principal;
            }
            catch
            {
                return null;
            }

        }
    }
}