using Microsoft.AspNetCore.Mvc;

namespace SimpleDotNetApp.Controllers
{
    [ApiController]
    [Route("/")]
    public class HomeController : ControllerBase
    {
        [HttpGet]
        public IActionResult Get()
        {
            return Ok("Hello from Aniket Ghosh");
        }
    }
}
