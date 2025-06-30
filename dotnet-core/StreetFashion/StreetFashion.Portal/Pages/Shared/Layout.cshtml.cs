using System;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Configuration;

namespace StreetFashion.Portal.Pages.Shared
{

    public class LayoutModel : PageModel
    {

        private readonly IConfiguration _config;
        public string[] appName = new string[2];
        public LayoutModel(IConfiguration config)
        {
            this._config = config;
        }


        public ActionResult GetAppName(int index)
        {
            dynamic data = _config["AppName"];
            return data[index];
        }
    }
}