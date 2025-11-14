using System.ComponentModel.DataAnnotations;

public class Book
{
    public int book_id { get; set; }

    [Required(ErrorMessage = "Book name is required")]
    public string book_name { get; set; }

    [Required(ErrorMessage = "Author is required")]
    public string author { get; set; }

    [Range(1, 9999, ErrorMessage = "Enter valid price")]
    public decimal price { get; set; }
}