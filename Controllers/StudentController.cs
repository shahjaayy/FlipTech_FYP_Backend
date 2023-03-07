using FlipTech_FYP.Models;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace FlipTech_FYP.Controllers
{
    public class StudentController : ApiController
    {

        Demo_Data_EnteredEntities db = new Demo_Data_EnteredEntities();

        [HttpGet]
        public HttpResponseMessage getEnrollSubjects(string userId)
        {
            /*  select * from course c join Enrollement e on c.c_id = e.c_id
                where e.s_id =
                    (SELECT S.s_id FROM [User] U 
                            join Student S 
                                    ON
                                 U.user_id = S.user_id 
                                    WHERE U.user_id = 1)

            */


            Student s = db.Students.SingleOrDefault(x => x.user_id == userId);

            if (s == null)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "Error.\n Incorrect userID");
            }

            var courses = db.Enrollements
            .Where
            (
                e => e.s_id == s.s_id
            )
            .Join
            (
                db.Courses,
                e => e.c_id,
                c => c.c_id,
                (e, c) => c
            )?.ToList();

            return Request.CreateResponse(HttpStatusCode.OK, courses);
        }

        [HttpGet]
        public HttpResponseMessage getTopics(string courseId, 
            String week)
        {
            /*  select * from List_Topic t join Lesson_Plan l 
                on t.less_id = l.less_id 
                where l.c_id = 1
            */

            var topics = (from t in db.List_Topic
                          join l in db.Lesson_Plan on t.less_id equals l.less_id
                          where(l.c_id == courseId && l.week == week)
                          select new { t.less_id, t.topic_id, t.topic_name, l.week })?.ToList();
            return Request.CreateResponse(HttpStatusCode.OK, topics);
        }

        [HttpGet]
        public HttpResponseMessage getVideos(
            string lessonId, 
            string topicId)
        {
            /* var = SELECT * from videos where less_id = 'lesson-2'
             * select * from video_data where topic_id = "" and var.v_id == ""
             * 
            */

            Video v = db.Videos.SingleOrDefault(x => x.less_id == lessonId);

            if (v == null)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "Error.\n Incorrect lessonId");
            }

            var metaData = db.video_data
            .Where
            (
                m => m.topic_id == topicId && m.v_id == v.v_id
            )?.ToList();

           
            return Request.CreateResponse(HttpStatusCode.OK, metaData);
        }

        [HttpPost]
        public HttpResponseMessage rate_video(
            string videoId, 
            string videoDataId, 
            float rate,
            string studentId)
        {
            Video v = db.Videos.SingleOrDefault(x => x.v_id == videoId);
            if (v == null)
                return Request.CreateResponse(HttpStatusCode.BadRequest, "Invalid video ID");

            using (var ctx = new Demo_Data_EnteredEntities())
            {
                ctx.Rates.Add(new Rate()
                {
                   s_id = studentId,
                   session = v.session,
                   v_data_id = videoDataId,
                   rate1 = rate
            });

                ctx.SaveChanges();
            }


            return Request.CreateResponse(HttpStatusCode.OK, "rated video as "+rate);
        }

        [HttpPost]
        public HttpResponseMessage saveHistory(
            string studentId,
            string time,
            string videoId,
            string date)
        {

            Video v = db.Videos.SingleOrDefault(x => x.v_id == videoId);
            if (v == null)
                return Request.CreateResponse(HttpStatusCode.BadRequest, "Invalid video ID");

            using (var ctx = new Demo_Data_EnteredEntities())
            {
                ctx.Histories.Add(new History()
                {
                    s_id = studentId,
                    session = v.session,
                    time = time,
                    date = DateTime.Parse(date),
                    v_id = videoId
                });

                ctx.SaveChanges();
            }

            return Request.CreateResponse(HttpStatusCode.OK, "history saved on " + time);

        }

    }
}
