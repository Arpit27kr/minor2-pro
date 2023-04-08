
package com.upes.devopsproj.dao;

import com.upes.devopsproj.entity.JobCategories;
import com.upes.devopsproj.entity.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
@RepositoryRestResource(collectionResourceRel ="jobCategory",path="job-category")
public interface JobCategoriesRepository extends JpaRepository<JobCategories, Long> {

}
