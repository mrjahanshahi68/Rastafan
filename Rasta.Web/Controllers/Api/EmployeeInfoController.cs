using Rasta.Common.Entities.Employee;
using Rasta.DataAccess.Employee;
using Rasta.Domain;
using Rasta.Domain.Employee;
using Rasta.Web.Infrastrcuture;
using Rasta.Web.Infrastrcuture.Filters;
using Rasta.Web.Models.Employee;
using Rasta.Web.Security.Filters;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web.Http;
using static Rasta.Common.AppConstants;
using static Rasta.Common.AppEnums;

namespace Rasta.Web.Controllers.Api
{
    //[JwtAuthentication]
    public class EmployeeInfoController : BaseApiController<EmployeeInfo, EmployeeInfoVM>
    {
        protected override IBusinessRule<EmployeeInfo> CreateRule() => new EmployeeInfoBusinessRule();
        
		//[Authorize(Roles = "Student,Manager")]
        [HttpPost]
		public async Task<HttpResponseMessage> GetEmployeeInfos(RequestFilterEmployee parameters)
		{
            if (parameters == null) CreateResponse(ResultCode.ValidationError);
            try
            {
                List<EmployeeInfoVM> result = null;
                int totalCount = 0;
                int _take = DefaultValues.Take;
                int _skip = DefaultValues.Skip;
                
                if (parameters.Take.HasValue) _take = (int)parameters.Take;
                if (parameters.Skip.HasValue) _skip = (int)parameters.Skip;

                using (var uow = new EmployeeUnitOfWork())
                {
                    var employeeQuery = uow.Repository<EmployeeInfo>().Queryable();

                    if (parameters.Filters != null)
                    {
                        if (!string.IsNullOrWhiteSpace(parameters.Filters.PersonalCode))
                            employeeQuery = employeeQuery.Where(e => e.PersonalCode.StartsWith(parameters.Filters.PersonalCode));

                        if (!string.IsNullOrWhiteSpace(parameters.Filters.FirstName))
                            employeeQuery = employeeQuery.Where(e => e.FirstName.StartsWith(parameters.Filters.FirstName.ToLower()));

                        if (!string.IsNullOrWhiteSpace(parameters.Filters.LastName))
                            employeeQuery = employeeQuery.Where(e => e.LastName.StartsWith(parameters.Filters.LastName.ToLower()));

                        if (!string.IsNullOrWhiteSpace(parameters.Filters.Email))
                            employeeQuery = employeeQuery.Where(e => e.Email.StartsWith(parameters.Filters.Email.ToLower()));

                        if (!string.IsNullOrWhiteSpace(parameters.Filters.PhoneNumber))
                            employeeQuery = employeeQuery.Where(e => e.PhoneNumber.StartsWith(parameters.Filters.PhoneNumber));

                        if (!string.IsNullOrWhiteSpace(parameters.Filters.City))
                            employeeQuery = employeeQuery.Where(e => e.City.ToLower().StartsWith(parameters.Filters.City.ToLower()));

                        if (!string.IsNullOrWhiteSpace(parameters.Filters.Company))
                            employeeQuery = employeeQuery.Where(e => e.Company.StartsWith(parameters.Filters.Company.ToLower()));
                    }
                    totalCount = await employeeQuery.CountAsync();
                    var employees = await employeeQuery.OrderBy(e => e.ID).Skip(_skip).Take(_take).ToListAsync();
                    result = employees.Select(e => new EmployeeInfoVM
                    {
                        ID = e.ID,
                        PersonalCode = e.PersonalCode,
                        FirstName = e.FirstName,
                        LastName = e.LastName,
                        Email = e.Email,
                        PhoneNumber = e.PhoneNumber,
                        City = e.City,
                        Company = e.Company,
                        IsDeleted = e.IsDeleted,
                    }).ToList();
                }
                return Success(new ResponseEmployeeList
                {
                    Data = result,
                    Skip = _skip,
                    Take = _take,
                    TotalCount = totalCount,
                    Count = result != null ? result.Count : 0,
                });
            }
            catch (Exception ex)
            {
                return await HandleExceptionAsync(ex);
            }
		}

    }
}
