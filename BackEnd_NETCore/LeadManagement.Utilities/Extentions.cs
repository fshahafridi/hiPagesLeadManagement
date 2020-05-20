using System;
using System.Collections.Generic;
using System.Text;
using static LeadManagement.Utilities.Enums;

namespace LeadManagement.Utilities
{
    public static class Extentions
    {
        public static string ToJobStatusString(this JobStatus jobStatus)
        {
            
            switch (jobStatus)
            {
                case JobStatus.JOB_NEW:
                    return "new";
                case JobStatus.JOB_ACCEPTED:
                    return "accepted";
                case JobStatus.JOB_DECLINED:
                    return "declined";
            }
            return "none";
        }
        
    }
}
