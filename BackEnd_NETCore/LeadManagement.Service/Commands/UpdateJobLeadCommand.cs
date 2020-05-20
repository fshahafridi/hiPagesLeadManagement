using LeadManagement.Repository.Models;
using LeadManagement.Utilities;
using MediatR;
using System;
using System.Linq;
using static LeadManagement.Utilities.Enums;

namespace LeadManagement.Service.Commands
{
    public class UpdateJobLeadCommand :IRequest<int>
    {
        public int JobId { get; set; }
        public JobStatus JobStatus { get; set; }
        public DateTime UpdatedAt { get; set; }
    }
    

}
