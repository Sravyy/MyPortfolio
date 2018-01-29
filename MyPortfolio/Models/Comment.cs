using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace MyPortfolio.Models
{   
    [Table("Comments")]
    public class Comment
    {
        [Key]
        public int CommentId { get; set; }
        public string Author { get; set; }
        public string Comments { get; set; }
        public int BlogPostId { get; set; }
        public virtual BlogPost BlogPosts { get; set; }
        public virtual ApplicationUser User { get; set; }

        public Comment(int commentId, string author, string comments)
        {
            CommentId = commentId;
            Author = author;
            Comments = comments;
        }

        public Comment()
        {

        }
    }
}
