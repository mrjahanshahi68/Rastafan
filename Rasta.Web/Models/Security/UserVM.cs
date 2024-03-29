﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Rasta.Common.AppEnums;

namespace Rasta.Web.Models.Security
{
    public class UserVM
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NationalCode { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public bool IsActive { get; set; }
        public bool IsDeleted { get; set; }
        public UserTypes UserType { get; set; }
        public DateTime RegisterDate { get; set; }
        public List<string> Roles { get; set; }
    }
}