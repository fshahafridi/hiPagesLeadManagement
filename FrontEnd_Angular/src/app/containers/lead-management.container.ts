import { Component, OnInit } from '@angular/core';
import { jobStatus } from "../models/enum.model"
import { LeadManagementService } from '../service/leadmanagement.service';
import { Job } from '../models/job.model'

@Component({
  selector: 'lead-management',
  templateUrl: './lead-management.container.html',
  styleUrls: ['./lead-management.container.css']
})
export class LeadManagement implements OnInit {
  public TabEnum = jobStatus;
  public selectedTab = jobStatus.invited;
  jobList: Job[];

  constructor(private leadManagementService: LeadManagementService) { }

  ngOnInit() {
    this.loadLeads(this.selectedTab);
  }

  private loadLeads(tabParam: jobStatus) {
    this.leadManagementService.getLeads(tabParam).subscribe((jobs: any) => {
      this.jobList = jobs;
    });
  }
  onJobStatusUpdate(eventParams: string) {
     
    this.loadLeads(jobStatus.invited);
  }
  onTabSelect(selectedTabParam: jobStatus) {

    if (selectedTabParam == jobStatus.invited) {
      this.loadLeads(jobStatus.invited);
      this.selectedTab = jobStatus.invited;
    }
    else {
      this.loadLeads(jobStatus.accepted);
      this.selectedTab = jobStatus.accepted;
    }
  }
}
