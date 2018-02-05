//using Microsoft.AspNetCore.Identity;
//using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
//using MyPortfolio.Models;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Threading.Tasks;
//using MyPortfolio.Controllers;

//namespace MyPortfolio.Services
//{
//    public static class RoleInitializer
//    {   
//        public static async Task Initalize(RoleManager<IdentityRole> roleManager)
//        {


//            if (!await roleManager.RoleExistsAsync("Admin"))
//            {
//                var role = new IdentityRole("Admin");
//                await roleManager.CreateAsync(role);


//                //var user = new ApplicationUser();
//                //user.UserName = "sravy";
//                //user.Email = "sravy@gmail.com";

//                //string userPWD = "0a1b1c1@ME";

//                //var chkUser = UserManager.Create(user, userPWD);

//                //if (chkUser.Succeeded)
//                //{
//                //    var result1 = UserManager.AddToRole(user.Id, "Admin");
//                //}

//            }
//            if (!await roleManager.RoleExistsAsync("Mod"))
//            {
//                var role = new IdentityRole("Mod");
//                await roleManager.CreateAsync(role);
//            }
//            if (!await roleManager.RoleExistsAsync("User"))
//            {
//                var role = new IdentityRole("User");
//                await roleManager.CreateAsync(role);
//            }
//            if (!await roleManager.RoleExistsAsync("Anonymous"))
//            {
//                var role = new IdentityRole("Anonymous");
//                await roleManager.CreateAsync(role);
//            }
//        }
//    }
//}
