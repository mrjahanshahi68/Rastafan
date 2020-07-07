window.$http = (function () {
	var _post = function (service, action, parameters) {
		var baseAddress = "/api";
		var thenPromise = null;
		var errorPromise = null;
		var promises = {
			then: function (fn) {
				thenPromise = fn;
				return promises;
			},
			error: function (fn) {
				errorPromise = fn;
				return promises;
			},
		};

		$.ajax({
			url: baseAddress + "/" + service + "/" + action,
			type: "POST",
			dataType: "json",
			data: parameters,
			complete: function (jqXHR, statusCode) {
				if (jqXHR.status == 200) {
					var resultJson = jqXHR.responseJSON;
					if (resultJson.ResultCode == 1)
						typeof thenPromise == "function" && thenPromise(jqXHR.responseJSON.Data, jqXHR.responseJSON, jqXHR);
					//else if (resultJson.ResultCode == 1)
					//	alert(resultJson.Messages.join("\n"));
					//else if (resultJson.ResultCode == 3)
					//	alert(resultJson.Messages.join("\n"));
					//else if (resultJson.ResultCode == 2)
					//	document.location = "/User/Login";
				}
				else {
					typeof errorPromise == "function" && errorPromise(jqXHR, statusCode);
				}
			},
		});

		return promises;
	};

	return {
		post: _post,
	};
})();

