import { Component, Output, Input,EventEmitter } from '@angular/core';
import { Job } from '../models/job.model';
import { jobStatus } from "../models/enum.model"
import { LeadManagementService } from '../service/leadmanagement.service';


@Component({
   
  selector: '[lead-invited]',
  templateUrl: './invited.component.html',
  styleUrls: ['./invited.component.css']
})
export class InvitedLeadComponent {
 
  @Input("JobsData") jobsData: Job[];
  @Output() jobStatusUpdated = new EventEmitter();
  public jobStatus = jobStatus;

  constructor(private leadMangementService:LeadManagementService){}

  updateJob(jobStatusParam:jobStatus, jobIdParm:number)
  {
   
    this.leadMangementService.updateJobStatus(jobStatusParam,jobIdParm).subscribe((result: any) => {
    
      if(result>0)
     {
      this.jobStatusUpdated.emit(result);
     }
   
    });
  }
}
