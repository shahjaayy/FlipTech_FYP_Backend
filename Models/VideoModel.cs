using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FlipTech_FYP.Models
{
    public class VideoModel
    {
        public string v_data_id { get; set; }
        public string v_id { get; set; }
        public string topic_id { get; set; }
        public string start_time { get; set; }
        public string end_time { get; set; }
        public string key_word { get; set; }
        public string url { get; set; }
        public string urlForYoutube { get; set; }
    }
}