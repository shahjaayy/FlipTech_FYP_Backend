using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlipTech_FYP.Models
{
    public class LoginModel
    {
        public string Id { get; set; }
        public string name { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }
        public string userId { get; set; }
        public string email { get; set; }
        public String LoginStatus { get; set; }
    }
}