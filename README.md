### Tools and Technology Used for Backend
1.  NET CORE 3.1
2.  MediatR 8.0.1 for CQRS
3.  MOQ 4.14 for unit testing
4.  MS EntityFramworkCore 3.1.4
5. SQL Server 2016 
### Tools and Technology Used for Frontend
1.  Angular CLI 8.3.14
2.  Node 12.13.0
3.  Angular Version 8
### Setup Backend Project.
1.	Open “PreDeployment_Scrips” folder and run the scripts  in the naming orders.
2.	Open  “appsettings.json” file under BackEnd_NETCore\LeadManagement.API and update the data base connection string according to your sql server settings.

### Setup Frontend Project.
1.	To Setup and run the front end project, the tools/runtime mentioned before should be installed on your system.
2.	Open the “environment.ts” under “FrontEnd_Angular\src\environments” folder and change the Backend Api url. Please note if you have       not changed the backend api url then this step is not required to perform. 
3.	Open command prompt and locate your frontend folder e.g. C:\ FrontEnd_Angular>
4.	Run npm install command to install the Angular packages and dependencies that is
    C:\ FrontEnd_Angular>npm install
5.	Finally, run the serve command to build and run the frontend application as 
    C:\ FrontEnd_Angular> ng serve --open







