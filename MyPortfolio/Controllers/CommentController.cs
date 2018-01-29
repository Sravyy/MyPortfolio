using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using MyPortfolio.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc.Rendering;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace MyPortfolio.Controllers
{
    [Authorize]
    public class CommentController : Controller
    {

        private readonly ApplicationDbContext _db;
        private readonly UserManager<ApplicationUser> _userManager;

        public CommentController(UserManager<ApplicationUser> userManager, ApplicationDbContext db)
        {
            _userManager = userManager;
            _db = db;
        }
        public IActionResult Index()
        {
            return View(_db.Comments.Include(items => items.BlogPosts).ToList());
        }

        public IActionResult Create(int id)
        {
            var thisComment = _db.Comments.FirstOrDefault(items => items.CommentId == id);
            ViewBag.PostId = new SelectList(_db.BlogPosts, "PostId", "Title");
            return View(thisComment);
        }

        [HttpPost]
        public IActionResult Create(Comment item)
        {
            _db.Comments.Add(item);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult Edit(int id)
        {
            var thisComment = _db.Comments.Include(items => items.BlogPosts).FirstOrDefault(items => items.CommentId == id);
            ViewBag.BlogPostId = new SelectList(_db.BlogPosts, "BlogPostId", "Title");
            return View(thisComment);
        }

        [HttpPost]
        public IActionResult Edit(Comment item)
        {
            _db.Entry(item).State = EntityState.Modified;
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Delete(int id)
        {
            var thisComment = _db.Comments.FirstOrDefault(items => items.CommentId == id);
            return View(thisComment);
        }

        [HttpPost, ActionName("Delete")]
        public IActionResult DeleteConfirmed(int id)
        {
            var thisComment = _db.Comments.FirstOrDefault(items => items.CommentId == id);
            _db.Comments.Remove(thisComment);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }
    }
}
