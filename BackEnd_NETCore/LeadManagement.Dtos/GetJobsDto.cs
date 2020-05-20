using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using static LeadManagement.Utilities.Enums;

namespace LeadManagement.Dtos
{
    public sealed class GetJobsDto
    {
        public int JobId { get; set; }
        public JobStatus Status { get; set; }
        public string ContactName { get; set; }
        public string Initials { get; set; }
        public string Suburb { get; set; }
        public string Postcode { get; set; }
        public string Catagory { get; set; }
        public string ContactPhone { get; set; }
        public string ContactEmail { get; set; }
        public int Price { get; set; }
        public string Description { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}
