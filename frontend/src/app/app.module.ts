import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { HttpClientModule } from '@angular/common/http';
import { ProductService } from './services/product.service';
import { ProductListComponent } from './components/product-list/product-list.component';
import { Routes, RouterModule} from '@angular/router';
import { ProductCategoryMenuComponent } from './components/product-category-menu/product-category-menu.component';
import { JobService } from './services/job.service';
import { JobListComponent } from './components/job-list/job-list.component';

const routes: Routes = [
  {path: 'category/:id', component: ProductListComponent},
  {path: 'category', component: ProductListComponent},
  {path: 'products', component: ProductListComponent},
  {path: '', redirectTo: '/products', pathMatch: 'full'},
  {path: '**', redirectTo: '/products', pathMatch: 'full'},
  {path: 'categories/:id', component: JobListComponent},
  {path: 'categories', component: JobListComponent},
  {path: 'jobs', component: JobListComponent},
];
@NgModule({
  declarations: [
    AppComponent,
    ProductListComponent,
    JobListComponent,
    ProductCategoryMenuComponent,
  ],
  imports: [
    RouterModule.forRoot(routes),
    BrowserModule,
    HttpClientModule
  ],
  providers: [ProductService,JobService],
  bootstrap: [AppComponent]
})
export class AppModule { }
