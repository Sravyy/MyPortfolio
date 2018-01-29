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
        public string html_url { get; set; }
        public string language { get; set; }

        public Project()
        {

        }

        public static List<Project> GetProjects()
        {
            var client = new RestClient();
            client.BaseUrl = new Uri("https://api.github.com/users/Sravyy/starred");
            client.AddDefaultHeader("User-Agent", "Sravyy");
           
            var request = new RestRequest();
            request.AddParameter("per_page", "3");
            request.AddParameter("direction", "desc");

            var response = new RestResponse();
            Task.Run(async () =>
            {
                response = await GetResponseContentAsync(client, request) as RestResponse;
            }).Wait();
            JArray jsonResponse = JsonConvert.DeserializeObject<JArray>(response.Content);

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
