using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using email_validation.Models;
using System.Data.SqlTypes;
using email_validation.Services;

namespace email_validation.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        // return View();
        return View(new IndexViewModel { ActionResponse = ""});
    }

    public IActionResult Privacy()
    {
        return View();
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }

    [HttpPost]
    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Index(IndexViewModel inputData)
    {
        if (inputData.OldEmail == null ||  inputData.NewEmail == null ||  inputData.TicketNumber == null)
            return View(new IndexViewModel { ActionResponse =  "Error: All input is required"});

        else
        {
            if (inputData.OldEmail.ToLower() == inputData.NewEmail.ToLower())
                return View(new IndexViewModel { ActionResponse =  "Error: Old and New email is same."});
        }


        // valid case
        ValidationService vds = new ValidationService();
        string response = vds.validateEmails(inputData.TicketNumber, inputData.OldEmail.ToLower(), inputData.NewEmail.ToLower());
        response = response + " <br> this is next line text";
        return View(new IndexViewModel { ActionResponse = response });
    }
}
