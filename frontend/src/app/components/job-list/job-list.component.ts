import { Component,OnInit } from '@angular/core';
import { JobService } from 'src/app/services/job.service';
import { Job } from 'src/app/common/job';
import { ActivatedRoute } from '@angular/router';
@Component({
  selector: 'app-job-list',
  templateUrl: './job-list.component.html',
  styleUrls: ['./job-list.component.css']
})
export class JobListComponent implements OnInit {

  jobs: Job[] = [];
  currentCategoriesId: number = 1;
  
  constructor(private jobService: JobService,private route: ActivatedRoute) { }

  ngOnInit() {
    this.route.paramMap.subscribe(() => {
      this.listJobs();
    });
  }

  listJobs() {

    const hasCategoriesId: boolean = this.route.snapshot.paramMap.has('id');

    if (hasCategoriesId) {
      this.currentCategoriesId = +this.route.snapshot.paramMap.get('id')!;
    }
    else {
      this.currentCategoriesId = 1;
    }

    this.jobService.getJobList(this.currentCategoriesId).subscribe(
      data => {
        this.jobs = data;
      }
    )
  }

}



