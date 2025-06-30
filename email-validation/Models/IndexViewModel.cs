using System.ComponentModel.DataAnnotations;

namespace email_validation.Models;

public class IndexViewModel
{
    [Required]
    [EmailAddress]
    [Display(Name = "Old Email Address")]
    public string? OldEmail { get; set; }

    [Required]
    [EmailAddress]
    [Display(Name = "New Email Address")]
    public string? NewEmail { get; set; }

    [Required]
    [Display(Name = "Ticket Number")]
    public string? TicketNumber { get; set; }

    public string ActionResponse { get; set; } = "";
}
