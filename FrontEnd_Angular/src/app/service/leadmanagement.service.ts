import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from '../../environments/environment';
import { Observable } from 'rxjs';
import { map } from "rxjs/operators";
import { Job } from '../models/job.model';
import {jobStatus } from "../models/enum.model"
 

@Injectable()
export class LeadManagementService {

  constructor(private http: HttpClient) { }

  getLeads(jobStatus:jobStatus): Observable<Job[]> {

    let APIURL: string = environment.apiBaseUrl + `${jobStatus}`;
    return this.http
      .get(APIURL)
      .pipe(
        map((data: any[]) =>
          data.map(
            (item: any) =>
              new Job(
                item.jobId,
                item.contactName,
                item.initials,
                item.contactEmail,
                item.contactPhone,
                item.price,
                item.description,
                item.suburb,
                item.postcode,
                item.catagory,
                item.createdAt 
                )
          )
        )
      );

  }

  updateJobStatus(jobsStatusParam:jobStatus, jobIdParam:number) {
  
    debugger;
    let APIURL: string = environment.apiBaseUrl ;
    return this.http.post(APIURL, {jobId:jobIdParam,jobStatus:jobsStatusParam} );
  }
}
