package com.store.entities;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


/**
 * @author auserox (Opanasiuk B.)
 */
@NoArgsConstructor
@Getter
@Setter
@Document("products") 
public class Product {

    @Id
    @Setter(AccessLevel.NONE)
    private ObjectId id;
    private String name;
    private String description;
    private double price;

    public Product(String name, String description, double price) {
        this.name = name;
        this.description = description;
        this.price = price;
    }

}

