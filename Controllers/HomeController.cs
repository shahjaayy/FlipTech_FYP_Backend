using FlipTech_FYP.Extensions;
using FlipTech_FYP.Models;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FlipTech_FYP.Controllers
{
    public struct FilterDto
    {
        public string TopicName { get; set; }
        public string TeacherName { get; set; }
        public string CourseName { get; set; }
        public int? Rating { get; set; }

        public bool IsFilterSet()
        {
            return
            (
                string.IsNullOrWhiteSpace(TopicName)
                &&
                string.IsNullOrWhiteSpace(TeacherName)
                &&
                string.IsNullOrWhiteSpace(CourseName)
                &&
                !Rating.HasValue
            );
        }
    }

    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Home Page";

            return View();
        }



        public string Filter(FilterDto filterDto)
        {
            //if (!filterDto.IsFilterSet())
            //{
            //    //Error: no filter set
            //    return "1";
            //}

            List<List_Topic> filteredTopics = null;

            Demo_Data_EnteredEntities db = new Demo_Data_EnteredEntities();

            try
            {
                var topics = db.Enrollements
                .WhereIfElse
                (
                    string.IsNullOrWhiteSpace(filterDto.TeacherName),
                    x => true,
                    x => x.Teacher.User.name == filterDto.TeacherName
                )
                .Select(x => x.Course)
                .WhereIfElse
                (
                    string.IsNullOrWhiteSpace(filterDto.CourseName),
                    x => true,
                    x => x.name == filterDto.CourseName
                )
                .SelectMany(x => x.Lesson_Plan)
                .Join
                (
                    db.List_Topic,
                    x => x.less_id,
                    y => y.less_id,
                    (x, y) => y
                )
                .WhereIfElse
                (
                    string.IsNullOrWhiteSpace(filterDto.TopicName),
                    x => true,
                    x => x.topic_name == filterDto.TopicName
                )
                .Select(x => x);

                if (filterDto.Rating.HasValue)
                {
                    filteredTopics = topics
                    .Join
                    (
                        db.video_data,
                        x => x.topic_id,
                        y => y.topic_id,
                        (x, y) => new { Topic = x, video_data = y }
                    )
                    .Join
                    (
                        db.Rates,
                        j => j.video_data.v_data_id,
                        y => y.v_data_id,
                        (j, y) => new { Topic = j.Topic, Rate = y }
                    )
                    .Where
                    (
                        j =>
                            j.Rate.rate1 == filterDto.Rating.Value
                    )
                    .Select(j => j.Topic).ToList();
                }
                else
                {
                    filteredTopics = topics.ToList();
                }
            }
            catch (Exception e)
            {
                var ee = e;
                throw;
            }

            int a = 10;
            int b = a + 10;

            return b.ToString();
        }
    }
}
