using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace MyPortfolio.Models.AccountViewModels
{
    [Table("BlogPosts")]
    public class BlogPost
    {
        [Key]
        public int PostId { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public virtual ApplicationUser User { get; set; }
        public virtual ICollection<Comment> Comments { get; set; }

        public BlogPost(int postId, string title, string body )
        {
            PostId = postId;
            Title = title;
            Body = body;
        }

        public BlogPost()
        {

        }


    }
}
