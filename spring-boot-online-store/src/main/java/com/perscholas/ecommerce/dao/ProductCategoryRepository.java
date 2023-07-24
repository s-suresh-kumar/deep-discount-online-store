package com.perscholas.ecommerce.dao;

import com.perscholas.ecommerce.entity.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;
// add cross origin support using annotation
//The @CrossOrigin annotation is used to enable Cross-Origin Resource Sharing
// (CORS) in a Spring Boot application. CORS is a mechanism that allows a web application running on one domain to make requests to a resource on another domain.
@CrossOrigin("http://localhost:4200")
// Use the @RepositoryRestResource annotation is used to expose Spring Data
// repositories as RESTful resources. This allows you to access your data using standard HTTP methods such as GET, POST, PUT, and DELETE.
// in particular for collection
@RepositoryRestResource(collectionResourceRel = "productCategory", path =
        "product-category")
public interface ProductCategoryRepository extends JpaRepository<ProductCategory, Long> {
}
