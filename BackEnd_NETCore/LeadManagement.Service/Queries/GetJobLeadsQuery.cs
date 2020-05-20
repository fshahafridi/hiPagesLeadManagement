using LeadManagement.Dtos;
using LeadManagement.Repository.Models;
using System;
using System.Collections.Generic;
using System.Text;
using static LeadManagement.Utilities.Enums;
using System.Linq;
using LeadManagement.Utilities;
using MediatR;

namespace LeadManagement.Service.Queries
{
    public sealed class GetJobLeadsQuery : IRequest<List<GetJobsDto>>
    {
        public JobStatus JobStatus { get; set; }
        public GetJobLeadsQuery(JobStatus jobStatus)
        {
            JobStatus = jobStatus;
        }
    }
}
