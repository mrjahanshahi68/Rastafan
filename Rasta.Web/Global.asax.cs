using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Http;
using Rasta.Web.Security;
using System.Data.Entity;
using Rasta.DataAccess.Security;
using Rasta.Web.Cache;
using Rasta.Web.Log;
using Rasta.Web.Infrastrcuture;
using Rasta.Web.App_Start;
using System.Web.Optimization;
using Rasta.DataAccess.Employee;
using Rasta.DataAccess.Log;

namespace Rasta.Web
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            AreaRegistration.RegisterAllAreas();
            GlobalConfiguration.Configure(WebApiConfig.Register);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            


            Database.SetInitializer<SecurityDataContext>(null);
			Database.SetInitializer<EmployeeDataContext>(null);
            Database.SetInitializer<LogDataContext>(null);

			SecurityManager.SetProvider(new JwtSecurityProvider());
			CacheManager.SetProvider(new WebCacheProvider());
            LogManager.SetProvider(new List<ILogger> { new FileLogger(), new DatabaseLogger() });

            ViewEngines.Engines.Clear();
            ViewEngines.Engines.Add(new AppViewEngine());

            //using (var uow = new SecurityUnitOfWork())
            //{
            //    var repo = uow.Repository<User>();
            //    repo.Insert(new User
            //    {
            //        FirstName = "hossein",
            //        LastName = "Jahanshahi",
            //        UserName = "developer",
            //        Password = "1".ToMd5().ToBase64(),
            //        Email = "mr.jahanshahi@gmail.com",
            //        IsActive = true,
            //        Mobile = "09368560182",
            //        RegisterDate = DateTime.Now,
            //        NationalCode = "2240027630",
            //        UserType = AppEnums.UserTypes.Developers,
            //    });
            //    uow.SaveChange();
            //}
        }
    }
}