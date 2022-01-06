package com.store.entities;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.stereotype.Component;


/**
 * @author auserox (Opanasiuk B.)
 */
@Data
@Document("products") 
public class Product {
    private String id;
    private String name;
    private String description;
    private int price;


    public Product() {
    }


    public Product(String id, String name, String description, int price) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
    }

}

