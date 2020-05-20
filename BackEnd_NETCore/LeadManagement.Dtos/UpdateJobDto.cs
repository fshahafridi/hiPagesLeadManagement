using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using static LeadManagement.Utilities.Enums;

namespace LeadManagement.Dtos
{
    public sealed class UpdateJobDto
    {
        public int JobId { get; set; }
        public JobStatus JobStatus { get; set; }
    }
}
