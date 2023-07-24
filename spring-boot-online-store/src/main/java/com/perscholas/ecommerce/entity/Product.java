package com.perscholas.ecommerce.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.math.BigDecimal;
import java.util.Date;

//The @Entity annotation is a JPA annotation that is used to mark a Java class as an entity. An entity is a Java class that represents a row in a database table.
@Entity
//@Table annotation is a JPA annotation that is used to map a Java class to a database table.
@Table(name="product")
// lombok annotation which provides among other things Setters and Getters
//The @Data annotation is a convenient annotation from Project Lombok that generates getters, setters, toString, equals, and hashCode methods for all the fields in a class.
@Data
public class Product {

    //The @Id annotation is a JPA annotation that is used to mark a field as the primary key of an entity. The primary key is a unique identifier for each row in a database table.
    @Id
    //The @GeneratedValue annotation is a JPA annotation that is used to
    // specify how the primary key value for an entity should be generated. IDENTITY: This strategy tells JPA to let the database generate the primary key value. This strategy is typically only used with databases that support identity columns
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    //The @Column annotation is a JPA annotation that is used to map a Java field to a database column.
    @Column(name="id")
    private Long id;

    //The @ManyToOne annotation is a JPA annotation that is used to map a one-to-many relationship between two entities.
    @ManyToOne
    //The @JoinColumn annotation is a JPA annotation that is used to map a
    // foreign key column to a database table.
    @JoinColumn(name="category_id", nullable=false)
    private ProductCategory category;

    @Column(name="sku")
    private String sku;

    @Column(name="name")
    private String name;

    @Column(name="description")
    private String description;

    @Column(name="unit_price")
    private BigDecimal unitPrice;

    @Column(name="image_url")
    private String imageUrl;

    @Column(name="active")
    private boolean active;

    @Column(name="units_in_stock")
    private int unitsInStock;

    @Column(name="date_created")
    // The @CreationTimestamp annotation is a JPA annotation that is used to mark a field as the creation timestamp of an entity.
    @CreationTimestamp
    private Date dateCreated;

    @Column(name="last_updated")
    // The @UpdateTimestamp annotation is a JPA annotation that is used to mark a field as the last modified timestamp of an entity.
    @UpdateTimestamp
    private Date lastUpdated;

}
