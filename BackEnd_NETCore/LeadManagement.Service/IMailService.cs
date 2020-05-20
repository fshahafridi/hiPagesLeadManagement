
using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using static LeadManagement.Utilities.Enums;

namespace LeadManagement.Service
{
   public  interface IMailService
    {

        void SendEmail(Email email);
    }
}
