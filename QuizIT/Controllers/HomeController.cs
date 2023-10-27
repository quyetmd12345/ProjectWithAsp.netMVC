using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuizIT.Controllers
{
    public class HomeController : Controller
    {


        public ActionResult Index ()
        {
            return View();
        }


        public ActionResult HeadPartial ()
        {
            return PartialView();
        }

        public ActionResult MetaPartial ()
        {
            return PartialView();
        }

        public ActionResult MenuPartial ()
        {
            return PartialView();
        }



        public ActionResult FooterPartial ()
        {
            return PartialView();
        }

        public int GetRandomIndex (List<string> list)
        {
            Random random = new Random();

            int randomIndex = random.Next(0, list.Count);

            return randomIndex;
        }
    }
}