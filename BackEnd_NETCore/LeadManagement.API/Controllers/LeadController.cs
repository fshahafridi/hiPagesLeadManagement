using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using LeadManagement.Dtos;
using LeadManagement.Service;
using LeadManagement.Service.Commands;
using LeadManagement.Service.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using static LeadManagement.Utilities.Enums;

namespace LeadManagement.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class LeadController : ControllerBase
    {
        private readonly IMediator _mediator;
        public LeadController( IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet("{jobstatus}")]
        public async Task<ActionResult<List<GetJobsDto>>> Get(int jobstatus)
        {
            try
            {
                var query = new GetJobLeadsQuery((JobStatus)jobstatus);
                var result = await _mediator.Send(query);
                if (result == null)
                {
                    return NotFound();

                }
                else
                {
                    return Ok(result);
                }
            }
            catch (Exception)
            {
                
                return BadRequest();
            }


        }
        [HttpPost]
        public async Task<ActionResult> Post([FromBody] UpdateJobDto job)
        {
            try
            {
                // Create Command...
                var command = new UpdateJobLeadCommand()
                {
                    JobId = job.JobId,
                    JobStatus = (JobStatus)job.JobStatus,
                    UpdatedAt = DateTime.Now
                };
                //Dispatch the command...
                var result = await _mediator.Send(command);
                return Ok(result);
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }
    }
}
