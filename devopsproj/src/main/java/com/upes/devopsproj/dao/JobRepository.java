package com.upes.devopsproj.dao;
import org.springframework.data.jpa.repository.JpaRepository;
import com.upes.devopsproj.*;
import com.upes.devopsproj.entity.Job;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public interface JobRepository  extends JpaRepository<Job,Long> {

    Page<Job> findByCategoriesId(@Param("id") Long id, Pageable pageable);


}
