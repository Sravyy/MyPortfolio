using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MyPortfolio.Models
{   
    [Table("Projects")]
    public class Project
    {   
        [Key]
        public int ProjectId { get; set; }
        public string name { get; set; }
        public string url { get; set; }
        public string language { get; set; }

        public Project()
        {

        }



    }
}
