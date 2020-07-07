using Rasta.Web.Infrastrcuture;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using static Rasta.Common.AppConstants;
using static Rasta.Common.AppEnums;

namespace Rasta.Web.Security.Filters
{
	public class AuthenticationFailureResult : IHttpActionResult
	{
		public string ReasonPhrase { get; set; }
		public HttpRequestMessage RequestMessage { get; set; }
		public AuthenticationFailureResult(string reasonPhrase, HttpRequestMessage requestMessage)
		{
			ReasonPhrase = reasonPhrase;
			RequestMessage = requestMessage;
		}
		public  Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
		{
			return Task.FromResult(Execute());
		}

		private HttpResponseMessage Execute()
		{
			var content = new ObjectContent(
				typeof(ApiResult),
				new ApiResult
				{
					ResultCode=ResultCode.UnAuthenticated,
					Messages=new List<string> { ReasonPhrase }
				}, new JsonMediaTypeFormatter()
			);

			var response= new HttpResponseMessage
			{
				StatusCode = HttpStatusCode.OK,
				RequestMessage = RequestMessage,
				ReasonPhrase = ReasonPhrase,
				Content = content
			};

			return response;
		}
	}
}