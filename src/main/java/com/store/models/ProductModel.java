package com.store.models;

import com.store.entities.Product;
import com.store.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

import java.util.ArrayList;
import java.util.List;

/**
 * @author auserox (Opanasiuk B.)
 */

@EnableMongoRepositories(basePackages = "com.store.repository")
public class ProductModel {

    private final List<Product> products;
    @Autowired
    ProductRepository repository;

    public ProductModel() {

        this.products = new ArrayList<>();
//        this.products.addAll(this.repository.findAll());
        this.products.add(new Product("01", "MacBook Pro 13 2020", "Best lap for a Spring coding", 5000));
        this.products.add(new Product("02", "Acer Nitro 3", "Nice combination of price and quality - perfect choice if you both like gaming an coding", 3200));
        this.products.add(new Product("03", "Dell Vostro 14212", "Pretty cool lap for a basic coding", 1500));

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
