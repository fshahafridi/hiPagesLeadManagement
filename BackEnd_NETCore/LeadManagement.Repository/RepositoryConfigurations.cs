using LeadManagement.Repository.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
 
namespace LoanManagement.Repository
{
 public static  class RepositoryConfigurations
    {
        public static void AddLeadManagementDB(this IServiceCollection services, string leadManagementDBConnectionString)
        {
            services.AddDbContext<LeadManagementDBContext>(options => options.UseSqlServer(leadManagementDBConnectionString));
        }
    }
}
