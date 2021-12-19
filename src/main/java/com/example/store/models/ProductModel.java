package com.example.store.models;

import com.example.store.entities.Product;

import java.util.ArrayList;
import java.util.List;

/**
 * @author auserox (Opanasiuk B.)
 */

public class ProductModel {
    // TODO: 19/12/2021 наладить отображение фото на сайте


    private List<Product> products;

    public ProductModel() {
        this.products = new ArrayList<>();
        this.products.add(new Product("01", "MacBook Pro 13' 2020", "mac.jpg", "Best lap for a Spring coding", 5000));
        this.products.add(new Product("02", "Acer Nitro 3", "acer.jpg","Nice combination of price and quality - perfect choice if you both like gaming an coding", 3200));
        this.products.add(new Product("03", "Dell Vostro 14212", "dell.jpg", "Pretty cool lap for a basic coding", 1500));
    }

    public List<Product> findAll() {
        return this.products;
    }

    public Product find(String id) {
        for (Product product : this.products) {
            if (product.getId().equalsIgnoreCase(id)) {
                return product;
            }
        }
        return null;
    }

}
