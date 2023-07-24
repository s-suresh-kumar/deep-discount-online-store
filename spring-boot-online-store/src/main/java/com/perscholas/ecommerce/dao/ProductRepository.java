package com.perscholas.ecommerce.dao;

import com.perscholas.ecommerce.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.web.bind.annotation.CrossOrigin;
// add cross origin support using annotation
//The @CrossOrigin annotation is used to enable Cross-Origin Resource Sharing
// (CORS) in a Spring Boot application. CORS is a mechanism that allows a web application running on one domain to make requests to a resource on another domain.
@CrossOrigin("http://localhost:4200")
public interface ProductRepository extends JpaRepository<Product, Long> {

    // additional custom query methods based on specific search/query criteria
    Page<Product> findByCategoryId(@Param("id") Long id, Pageable pageable);
    Page<Product> findByNameContaining(@Param("name") String name,
                                       Pageable page);
}
