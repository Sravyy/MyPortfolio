using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MyPortfolio.Models.AccountViewModels
{   
    [Table("Comments")]
    public class Comment
    {
        [Key]
        public int CommentId { get; set; }
        public string Author { get; set; }
        public string Comments { get; set; }
        public int PostId { get; set; }
        public virtual BlogPost BlogPosts { get; set; }
        public virtual ApplicationUser User { get; set; }
    }
}
