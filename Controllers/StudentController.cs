using FlipTech_FYP.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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
        public HttpResponseMessage getTopics(
            string courseId, 
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
            string lessonId)
        {
            /* var = SELECT * from videos where less_id = 'lesson-2'
             * select * from video_data where topic_id = "" and var.v_id == ""
             * 
            */

            var videoModels = db.Videos
                .Where(v => v.less_id == lessonId)
                .Join(db.video_data,
                      v => v.v_id,
                      m => m.v_id,
                      (v, m) => new {
                          m.v_id,
                          m.v_data_id,
                          m.url,
                          m.topic_id,
                          m.start_time,
                          m.end_time,
                          m.key_word
                      })
                .ToList();

            if (videoModels.Count == 0)
            {
                return Request.CreateResponse(HttpStatusCode.BadRequest, "Error.\n Incorrect lessonId");
            }

            var videoModelList = videoModels.Select(m => {
                var urlSplit = m.url.Split('/');
                return new VideoModel
                {
                    v_id = m.v_id,
                    v_data_id = m.v_data_id,
                    url = m.url,
                    topic_id = m.topic_id,
                    start_time = m.start_time,
                    end_time = m.end_time,
                    key_word = m.key_word,
                    urlForYoutube = urlSplit.Last()
                };
            }).ToList();

            return Request.CreateResponse(HttpStatusCode.OK, videoModelList);
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
                var qry = db.Rates.SingleOrDefault
                    (x => x.v_data_id == videoDataId && x.s_id == studentId);

                if (qry != null)
                {
                    // The value exists .Update
                    qry.rate1 = rate;
                    ctx.Entry(qry).State = EntityState.Modified;
                }
                else
                {
                    ctx.Rates.Add(new Rate()
                    {
                        s_id = studentId,
                        session = v.session,
                        v_data_id = videoDataId,
                        rate1 = rate
                    });
                }

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

        [HttpGet]
        public HttpResponseMessage getViews(String videoId)
        {
            var ctx = new Demo_Data_EnteredEntities();
            int views = ctx.Histories.Where(h => h.v_id == videoId).Count();
            return Request.CreateResponse(HttpStatusCode.OK, views);
        }

        [HttpGet]
        public HttpResponseMessage getComulativeRating(String videoDataId)
        {
            var ctx = new Demo_Data_EnteredEntities();

            var ratingSum = ctx.Rates
                .Where(r => r.v_data_id == videoDataId)
                .Select(r => r.rate1).Sum();

            float comulativeRating = (float) ( ratingSum / ctx.Rates
                                                            .Where(r => r.v_data_id == videoDataId)
                                                            .Count());

            return Request.CreateResponse(HttpStatusCode.OK, comulativeRating);
        }

        [HttpPost]
        public HttpResponseMessage saveNotes(
            string studentId,
            string notes,
            string videoId,
            string videoDataId)
        {

            Video v = db.Videos.SingleOrDefault(x => x.v_id == videoId);
            if (v == null)
                return Request.CreateResponse(HttpStatusCode.BadRequest, "Invalid video ID");

            using (var ctx = new Demo_Data_EnteredEntities())
            {
                ctx.Notes.Add(new Note()
                {   
                    s_id = studentId,
                    v_data_id = videoDataId,
                    session = v.session,
                    notes = notes,
                });

                ctx.SaveChanges();
            }

            return Request.CreateResponse(HttpStatusCode.OK, "Notes has been saved.");

        }

        [HttpGet]
        public HttpResponseMessage getNotes(
            string studentId,
            string videoDataId)
        { 
            var notes = db.Notes
            .Where
            (
                n => n.s_id == studentId 
                &&
                n.v_data_id == videoDataId
            )?.ToList();

            return Request.CreateResponse(HttpStatusCode.OK, notes);
        }

        [HttpGet]
        public HttpResponseMessage getAllTopics()
        {
            var topics = db.List_Topic.Select(x=> x.topic_name)?.ToList();

            return Request.CreateResponse(HttpStatusCode.OK, topics);
        }

        [HttpGet]
        public HttpResponseMessage getAllTeachers()
        {
            var teachers = db.Users.Where(x => x.role == "Teacher").Select(x=> x.name)?.ToList();

            return Request.CreateResponse(HttpStatusCode.OK, teachers);
        }

        [HttpGet]
        public HttpResponseMessage getAllCourses()
        {
            var courses = db.Courses.Select(x => x.name)?.ToList();

            return Request.CreateResponse(HttpStatusCode.OK, courses);
        }

        [HttpGet]
        public HttpResponseMessage searchWithFilters(
            String teacher, 
            String topic, 
            String course, 
            String rating)
        {
            
            

           /* if (filter == 0)
            {

            }
            else if(filter == 1)
            {
                //Course Searching
                List<String> courseId = (from c in db.Courses where (c.name == searchValue) select c.c_id).ToList();
                
                if (courseId != null)
                {
                    var query = (from lp in db.Lesson_Plan
                                join lt in db.List_Topic on lp.less_id equals lt.less_id
                                //join vd in db.video_data on lt.topic_id equals vd.topic_id
                                where courseId.All(entity => lp.c_id.Contains(entity))
                                select lt).ToList().Select(lt => new Topics
                                {
                                    topic_id = lt.topic_id,
                                    less_id = lt.less_id,
                                    topic_name = lt.topic_name,
                                    week = ""
                                }).ToList();

                    if (query.Count == 0)
                        return Request.CreateResponse(HttpStatusCode.OK, "No Topics found for this course");
                    return Request.CreateResponse(HttpStatusCode.OK, query);
                }
                else
                    return Request.CreateResponse(HttpStatusCode.OK, "Course name not found");

            }
            else if (filter == 2)
            {
                var videoDataRecord = db.Users
                    .Where(u => u.name == searchValue)
                    .SelectMany(u => db.Teachers
                        .Where(t => t.user_id == u.user_id)
                        .SelectMany(t => db.Videos
                            .Where(v => v.t_id == t.t_id)
                            .SelectMany(lt => db.List_Topic
                                .Where(vd => vd.less_id == lt.less_id))))
                    .ToList() // fetch data from database
                    .Select(lt => new Topics
                    {
                        topic_id = lt.topic_id,
                        less_id = lt.less_id,
                        topic_name = lt.topic_name,
                        week = ""
                    })
                    .ToList();

                if (videoDataRecord.Count == 0)
                {
                    return Request.CreateResponse(HttpStatusCode.OK, "Teacher not found");
                }

                return Request.CreateResponse(HttpStatusCode.OK, videoDataRecord);
            }
            else if (filter == 3)
            {
                //Rating Searching
                using (var context = new Demo_Data_EnteredEntities())
                {
                    double rating = Double.Parse(searchValue);
                    
                    var videoDataRecord = db.Rates
                    .Where(r => r.rate1 == rating)
                    .SelectMany(vd => db.video_data
                        .Where(r => r.v_data_id == vd.v_data_id)
                        .SelectMany(lt => db.List_Topic
                            .Where(w => w.topic_id == lt.topic_id)))
                    .ToList() // fetch data from database
                    .Select(lt => new Topics
                    {
                        topic_id = lt.topic_id,
                        less_id = lt.less_id,
                        topic_name = lt.topic_name,
                        week = ""
                    })
                    .ToList();

                    if (videoDataRecord.Count > 0)
                        return Request.CreateResponse(HttpStatusCode.OK, videoDataRecord);
                    return Request.CreateResponse(HttpStatusCode.OK, "No data found on this search");
                }
            }*/



            return Request.CreateResponse(HttpStatusCode.OK, "");
        }

    }
}
