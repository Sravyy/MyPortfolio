using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using RestSharp;
using RestSharp.Authenticators;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Net;

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

        public static List<Project> GetProjects()
        {
            var client = new RestClient("https://api.github.com/users/Sravyy/starred");
            client.AddDefaultHeader("User-Agent", "Sravyy");
            var request = new RestRequest();
            
            var response = new RestResponse();
            Task.Run(async () =>
            {
                response = await GetResponseContentAsync(client, request) as RestResponse;
            }).Wait();
            JObject jsonResponse = JsonConvert.DeserializeObject<JObject>(response.Content);
            var projectList = JsonConvert.DeserializeObject<List<Project>>(jsonResponse.ToString());
            return projectList;
        }

        public static Task<IRestResponse> GetResponseContentAsync(RestClient theClient, RestRequest theRequest)
        {
            var tcs = new TaskCompletionSource<IRestResponse>();
            theClient.ExecuteAsync(theRequest, response => {
                tcs.SetResult(response);
            });
            return tcs.Task;
        }

       
    }
}
