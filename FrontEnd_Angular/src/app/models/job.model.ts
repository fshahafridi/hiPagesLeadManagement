export class Job {

  constructor(
    public jobId: string,
    public contactName: string,
    public initials: string,
    public contactEmail: string,
    public contactPhone:string,
    public price: string,
    public description: string,
    public suburb: string,
    public postcode: string,
    public catagory: string,
    public createdAt: Date) { }
}
