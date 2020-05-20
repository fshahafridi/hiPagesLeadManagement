using LeadManagement.API.Controllers;
using LeadManagement.Dtos;
using LeadManagement.Service.Queries;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Moq;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Xunit;

namespace LeadManagement.UnitTests
{
   public  class LeadControllerTest
    {
        [Fact]
        public async Task CarController_GetJobLead_OkResult_Test()
        {
            //Arrange

            var mediator = new Mock<IMediator>();
            mediator.Setup(m => m.Send(It.IsAny<GetJobLeadsQuery>(), new CancellationToken())).ReturnsAsync(new List<GetJobsDto>());
            var controller = new LeadController(mediator.Object);

            //Act
            var result = await controller.Get(1);

            //Assert
            Assert.IsType<OkObjectResult>(result.Result);
        }
        [Fact]
        public async Task CarController_GetJobLead_NotFoundResult_Test()
        {
            //Arrange
            var mediator = new Mock<IMediator>();
            mediator.Setup(m => m.Send(It.IsAny<GetJobLeadsQuery>(), new CancellationToken())).Returns(Task.FromResult<List<GetJobsDto>>(null));
            var controller = new LeadController(mediator.Object);
            //Act
            var result = await controller.Get(1);
            //Assert
            Assert.IsType<NotFoundObjectResult>(result.Result);
        }
       
        //Other Tests to follow the same apprach...
    }
}
