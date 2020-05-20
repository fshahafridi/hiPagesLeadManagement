using MediatR;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Text;

namespace LeadManagement.Service
{

    public static class ServiceConfigurations
    {
        public static void AddLeadManagementService(this IServiceCollection services)
        {
            services.AddMediatR(typeof(ServiceConfigurations));
            services.AddTransient<IMailService, MailService>();
           
        }

    }
}
