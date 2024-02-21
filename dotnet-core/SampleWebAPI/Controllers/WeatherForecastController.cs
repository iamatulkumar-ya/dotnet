using Microsoft.AspNetCore.Mvc;

namespace sampleAPI.Controllers;

[ApiController]
[Route("[controller]")]
public class WeatherForecastController : ControllerBase
{
    private static readonly string[] Summaries = new[]
    {
        "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
    };

    private readonly ILogger<WeatherForecastController> _logger;
     private readonly IConfiguration _configuration;

    public WeatherForecastController(ILogger<WeatherForecastController> logger, IConfiguration configuration)
    {
        _logger = logger;
        _configuration = configuration ;
    }

    [HttpGet]
     [Route("[action]")]
    public IEnumerable<WeatherForecast> GetWeatherForecast()
    {
        return Enumerable.Range(1, 5).Select(index => new WeatherForecast
        {
            Date = DateTime.Now.AddDays(index),
            TemperatureC = Random.Shared.Next(-20, 55),
            Summary = Summaries[Random.Shared.Next(Summaries.Length)]
        })
        .ToArray();
    }

     [HttpGet]
     [Route("[action]")]
    public IActionResult GetMessage()
    {
        string msg = _configuration.GetSection("AppSettings")["customMsg"];
        string appName = _configuration.GetValue<string>("appName");
        return  Content("Vlaue from Json file" + msg + " and the app name is " + appName, "application/json");
    }

    
     [HttpGet]
     [Route("[action]")]
    public IActionResult GetMessageFromENV()
    {
        string appName = Environment.GetEnvironmentVariable("SAMPLEAPP_APPNAME_KEY");
        //string appName = _configuration.GetValue<string>("appName");
        return  Content("The app name is " + appName, "application/json");
    }
}
