//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FlipTech_FYP.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class video_data
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public video_data()
        {
            this.Notes = new HashSet<Note>();
            this.Rates = new HashSet<Rate>();
        }
    
        public string v_data_id { get; set; }
        public string v_id { get; set; }
        public string topic_id { get; set; }
        public string start_time { get; set; }
        public string end_time { get; set; }
        public string key_word { get; set; }
        public string url { get; set; }
    
        public virtual List_Topic List_Topic { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Note> Notes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Rate> Rates { get; set; }
        public virtual Video Video { get; set; }
    }
}
