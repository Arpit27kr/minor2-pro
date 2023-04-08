package com.upes.devopsproj.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.Setter;


@Entity
@Table(name="Job_categories")


@Getter
@Setter

public class JobCategories {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private Long id ;

    @Column(name="category_name")
    private String categoryName;

    @OneToMany(cascade =CascadeType.ALL,mappedBy="categories")
    private Set<Job> jobs;


}
