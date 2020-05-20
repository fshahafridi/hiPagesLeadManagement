import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import {LeadManagement} from './containers/lead-management.container'
import {InvitedLeadComponent} from './component/invited.component'
import {AcceptedLeadComponent} from './component/accepted.component'
import { LeadManagementService } from './service/leadmanagement.service';
import { HttpClientModule } from '@angular/common/http';


@NgModule({
  declarations: [
    AppComponent,
    LeadManagement,
    InvitedLeadComponent,
    AcceptedLeadComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule
  ],
  providers: [LeadManagementService],
  bootstrap: [AppComponent]
})
export class AppModule { }
