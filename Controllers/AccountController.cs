using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using FlipTech_FYP.Models;
using System.Web.Http;

namespace FlipTech_FYP.Controllers
{
    public class AccountController : ApiController
    {
        [HttpGet]
        public HttpResponseMessage Login(String email, String password)
        {
            LoginModel model = new LoginModel();
            User user = null;

            using (Demo_Data_EnteredEntities db = new Demo_Data_EnteredEntities())
            {
                try
                {
                    user = db.Users.SingleOrDefault
                    (
                        x =>
                            x.email.Equals(email, StringComparison.CurrentCultureIgnoreCase)
                            &&
                            x.password.Equals(password)
                    );

                    if (user == null)
                    {
                        model.LoginStatus = "UserNotFound";
                    }
                    else
                    {
                        if (user.role == "Student")
                        {
                            Student s = db.Students.SingleOrDefault(x => x.user_id == user.user_id);
                            model.userId = s.s_id;
                        }
                        else
                        {
                            Teacher t = db.Teachers.SingleOrDefault(x => x.user_id == user.user_id);
                            model.userId = t.t_id;
                        }
                        model.Id = user.user_id;
                        model.name = user.name;
                        model.Role = user.role;
                        model.email = user.email;
                        model.LoginStatus = "Success";
                    }
                }
                catch (Exception)
                {
                    model.LoginStatus = "MultipleUsersFound";
                }
            }

            return Request.CreateResponse(HttpStatusCode.OK, model); ;
        }
    }
}
