using System;
using System.Collections.Generic;
using System.Text;

namespace LeadManagement.Service
{
    public sealed class Email
    {
        //Sample fields. In real world scenario we may have more fields...
        public string FromEmail { get; set; }
        public string ToEmail { get; set; }
        public string CC { get; set; }
        public string Subject { get; set; }
        public string Body { get; set; }

        

    }
}
