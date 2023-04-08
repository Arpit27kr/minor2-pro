import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Job } from '../common/job';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';
import { JobListComponent } from '../components/job-list/job-list.component';

@Injectable({
  providedIn: 'root'
})
export class JobService {
  private baseUrl = 'http://localhost:8080/api/jobs';
  private categoriesUrl = 'http://localhost:8080/api/job-categories';

  constructor(private httpClient: HttpClient) { }
  getJobList(theCategoriesId: number): Observable<Job[]> {
    const searchUrl = `${this.baseUrl}/search/findByJobId?id=${theCategoriesId}`;
    return this.httpClient.get<GetResponse>(searchUrl).pipe(
      map(response => response._embedded.jobs)
    );
  }
}



interface GetResponse {
  _embedded: {
    jobs: Job[];
  }

}
