using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MyPortfolio.Services
{
    public static class RoleInitializer
    {   
        public static async Task Initalize(RoleManager<IdentityRole> roleManager)
        {
            if(!await roleManager.RoleExistsAsync("Admin"))
            {
                var role = new IdentityRole("Admin");
                await roleManager.CreateAsync(role);
            }
            if (!await roleManager.RoleExistsAsync("Mod"))
            {
                var role = new IdentityRole("Mod");
                await roleManager.CreateAsync(role);
            }
            if (!await roleManager.RoleExistsAsync("User"))
            {
                var role = new IdentityRole("User");
                await roleManager.CreateAsync(role);
            }
            if (!await roleManager.RoleExistsAsync("Anonymous"))
            {
                var role = new IdentityRole("Anonymous");
                await roleManager.CreateAsync(role);
            }
        }
    }
}
