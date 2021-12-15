package com.example.store.models;

import lombok.Data;
import org.springframework.stereotype.Component;

/**
 * @author auserox (Opanasiuk B.)
 */
@Data
public class Product {
    private String id;
    private String name;
    private String description;
    private int price;

    public Product(String id, String name, String description, int price) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
    }
}

