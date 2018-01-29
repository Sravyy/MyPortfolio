using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using MyPortfolio.Models;

namespace MyPortfolio.Controllers
{
    public class HomeController : Controller
    {
       
        public IActionResult Index()
        {
            var projects = Project.GetProjects();
            return View(projects);
        }
        
        //[Authorize(Roles ="Users")]
        //public IActionResult About()
        //{
        //    ViewData["Message"] = "Your application description page.";

        //    return View();
        //}

        //public IActionResult AboutMe()
        //{
        //    return View();
        //}

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        //public IActionResult Projects()
        //{
        //    var projects = Project.GetProjects();

        //    return View(projects);
        //}

        public IActionResult Error()
        {
            return View();
        }
    }
}
