using LeadManagement.Dtos;
using LeadManagement.Repository.Models;
using LeadManagement.Service.Queries;
using LeadManagement.Utilities;
using MediatR;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace LeadManagement.Service.Handlers
{
    public class GetJobLeadsQueryHandler : IRequestHandler<GetJobLeadsQuery, List<GetJobsDto>>
    {
        private readonly LeadManagementDBContext _leadManagementDBContext;
        public GetJobLeadsQueryHandler(LeadManagementDBContext leadManagementDBContext)
        {
            _leadManagementDBContext = leadManagementDBContext;
        }



        public  Task<List<GetJobsDto>> Handle(GetJobLeadsQuery request, CancellationToken cancellationToken)
        {
            var jobList = (from job in _leadManagementDBContext.Jobs
                           join suburb in _leadManagementDBContext.Suburbs on job.SuburbId equals suburb.Id
                           join catagory in _leadManagementDBContext.Categories on job.CategoryId equals catagory.Id
                           where job.Status == request.JobStatus.ToJobStatusString()
                           orderby job.ContactName ascending
                           select new GetJobsDto
                           {
                               JobId = job.Id,
                               ContactName = job.ContactName,
                               Initials = job.ContactName[0].ToString(),
                               ContactEmail = job.ContactEmail,
                               ContactPhone = job.ContactPhone,
                               Description = job.Description,
                               Price = job.Price,
                               Suburb = suburb.Name,
                               Postcode = suburb.Postcode,
                               Catagory = catagory.Name,
                               CreatedAt = job.CreatedAt,

                           }).ToListAsync();


            return jobList;
        }

    }
}
