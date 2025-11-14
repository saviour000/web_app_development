using System.Linq;
using System.Web.Mvc;

public class BookController : Controller
{
    BookDBContext db = new BookDBContext();

    // View All
    public ActionResult Index()
    {
        return View(db.Books.ToList());
    }

    // Insert
    public ActionResult Create() => View();

    [HttpPost]
    public ActionResult Create(Book b)
    {
        if (ModelState.IsValid)
        {
            db.Books.Add(b);
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        return View(b);
    }

    // Search
    public ActionResult Search(string name)
    {
        var result = db.Books.Where(x => x.book_name.Contains(name)).ToList();
        return View("Index", result);
    }

    // Update
    public ActionResult Edit(int id)
    {
        return View(db.Books.Find(id));
    }

    [HttpPost]
    public ActionResult Edit(Book b)
    {
        if (ModelState.IsValid)
        {
            db.Entry(b).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return RedirectToAction("Index");
        }
        return View(b);
    }

    // Delete
    public ActionResult Delete(int id)
    {
        var b = db.Books.Find(id);
        db.Books.Remove(b);
        db.SaveChanges();
        return RedirectToAction("Index");
    }
}