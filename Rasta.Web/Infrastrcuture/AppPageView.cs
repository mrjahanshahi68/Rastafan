using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Rasta.Web.Infrastrcuture
{
    public abstract class AppPageView: WebViewPage
    {
        public string Title {
            get { return ViewBag.Title; }
            set { ViewBag.Title = value; }
        }
    }
    public abstract class AppPageView<TModel> : WebViewPage<TModel>
    {
        public string Title
        {
            get { return ViewBag.Title; }
            set { ViewBag.Title = value; }
        }
    }
}