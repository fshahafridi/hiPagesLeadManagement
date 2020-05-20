using LeadManagement.Repository.Models;
using LeadManagement.Utilities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static LeadManagement.Utilities.Enums;

namespace LeadManagement.Service
{
    public sealed class MailService : IMailService
    {
        public void SendEmail(Email email)
        {
            
            /* Send email using the email entity. this method will also read smtp configurations and will wil use proper email 
             * template from DB to be used as email body in the form HTML.
             */

            

        }
    }
}
