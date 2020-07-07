﻿using Rasta.Common.Entities.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Rasta.Common.AppEnums;

namespace Rasta.Common.Entities
{
    public class AppUserInfo
    {
        public User Context { get; set; }
        public AppUserInfo()
        {
            Context = new User();
        }
        public int UserId { get; set; }
        public virtual bool IsAdmin()
        {
            if (Context.UserType == UserTypes.Administrator)
                return true;
            return false;
        }
        public virtual bool IsDeveloper()
        {
            if (Context.UserType == UserTypes.Developers)
                return true;
            return false;
        }
        public virtual bool IsAdminOrDeveloper()
        {
            if (Context.UserType == UserTypes.Administrator || Context.UserType == UserTypes.Developers)
                return true;
            return false;
        }
    }
}
