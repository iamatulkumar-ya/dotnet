using Microsoft.AspNetCore.Mvc;

namespace netcorewebapi.Controllers
{
    [Route("api")]
    public class HomeController : Controller
    {
        [HttpGet]
       
        public string  Get()
        {
            return "Net Core API is up and running. Try these endpoints: api/GetValues";
        }


        [HttpGet]
        [Route("[action]")]
        public string GetValues()
        { 
            return String.Format( "This message is coming form {0} application, and thi is the secret message : {1}.",
                Environment.GetEnvironmentVariable("APP_NAME"),
                Environment.GetEnvironmentVariable("SECRET_MSG"));
        }
    }
}
