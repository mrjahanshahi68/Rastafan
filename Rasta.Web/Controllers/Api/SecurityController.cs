using Rasta.Common.Entities;
using Rasta.Common.Entities.Security;
using Rasta.Common.Exceptions;
using Rasta.Domain;
using Rasta.Domain.Security;
using Rasta.Web.Infrastrcuture;
using Rasta.Web.Infrastrcuture.Filters;
using Rasta.Web.Models.Security;
using Rasta.Web.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using static Rasta.Common.AppConstants;
using static Rasta.Common.AppEnums;

namespace Rasta.Web.Controllers.Api
{

    public class SecurityController : BaseApiController<User,UserVM>
	{
        public  UserBusinessRule Rule => BusinessRule as UserBusinessRule;
        protected override IBusinessRule<User> CreateRule()=> new UserBusinessRule();
        
        [HttpPost]
        [AllowAnonymous]
        public async Task<HttpResponseMessage> Login(AuthenticateRequest parameters)
		{
            try
			{
                #region Validations
                if (parameters == null) throw new ValidationModelException(MessageTemplate.ParameterIsNotDefined);

                var errors = new List<string>();
                if (string.IsNullOrWhiteSpace(parameters.UserName))
                    errors.Add(string.Format(MessageTemplate.Required, nameof(parameters.UserName)));
                if (string.IsNullOrWhiteSpace(parameters.Password))
                    errors.Add(string.Format(MessageTemplate.Required, nameof(parameters.Password)));
                if (errors.Any()) throw new ValidationModelException(errors);
                #endregion

                var user = Rule.FindUserByUserName("developer");
                if (!SecurityManager.SignIn(parameters.UserName, parameters.Password))
                    throw new AuthenticationException("Username or password was wrong");
                
				var jwtToken= SecurityManager.GenerateToken(parameters.UserName);

				return Success(jwtToken);
			}
			catch (Exception ex)
			{
				return await  HandleExceptionAsync(ex);
			}
		}
	}
}
