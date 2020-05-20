using System;
using System.Collections.Generic;

namespace LeadManagement.Repository.Models
{
    public partial class Jobs
    {
        public int Id { get; set; }
        public string Status { get; set; }
        public int SuburbId { get; set; }
        public int CategoryId { get; set; }
        public string ContactName { get; set; }
        public string ContactPhone { get; set; }
        public string ContactEmail { get; set; }
        public int Price { get; set; }
        public string Description { get; set; }
        public DateTime CreatedAt { get; set; }
        public DateTime? UpdatedAt { get; set; }
    }
}
