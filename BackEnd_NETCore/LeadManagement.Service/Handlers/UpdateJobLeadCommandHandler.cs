using LeadManagement.Repository.Models;
using LeadManagement.Service.Commands;
using LeadManagement.Utilities;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using static LeadManagement.Utilities.Enums;

namespace LeadManagement.Service.Handlers
{
    class UpdateJobLeadCommandHandler : IRequestHandler<UpdateJobLeadCommand, int>
    {
        private readonly LeadManagementDBContext _leadManagementDBContext;
        private readonly IMailService _mailservice;
        public UpdateJobLeadCommandHandler(LeadManagementDBContext leadManagementDBContext, IMailService mailService)
        {
            _leadManagementDBContext = leadManagementDBContext;
            _mailservice = mailService;
        }
        public async Task<int> Handle(UpdateJobLeadCommand request, CancellationToken cancellationToken)
        {
            
            var recordsEffected = -1;
            var jobEntity = _leadManagementDBContext.Jobs.FirstOrDefault(j => j.Id == request.JobId);

            if (jobEntity != null)
            {
                jobEntity.Status = request.JobStatus.ToJobStatusString();
                // If the Price is higher than $500, then 10% discount needs to be applied to the price
                if (request.JobStatus == JobStatus.JOB_ACCEPTED && jobEntity.Price > 500)
                {
                    jobEntity.Price = jobEntity.Price - jobEntity.Price * 10 / 100;
                }
                jobEntity.UpdatedAt = request.UpdatedAt;


                recordsEffected = await _leadManagementDBContext.SaveChangesAsync();
                if (recordsEffected > 0)
                {
                    /*Just for demo purpose. In actual scenario we will build the model with actual data.
                     In real world scenario, we should maintain a seprate table in db that will contain pending email object.There
                     will be a window service running in the background that will pick the record and send an email.
                    */
                    _mailservice.SendEmail(new Email() { ToEmail= "sales@techtest.com"});
                    }
            }
            return recordsEffected;
        }
    }
}
