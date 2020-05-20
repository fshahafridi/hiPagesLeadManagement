import { Component, Input } from '@angular/core';
import { Job } from '../models/job.model';

@Component({
   
  selector: '[lead-accepted]',
  templateUrl: './accepted.component.html',
  styleUrls: ['./accepted.component.css']
})
export class AcceptedLeadComponent {
  @Input("JobsData") jobsData: Job[];
}
