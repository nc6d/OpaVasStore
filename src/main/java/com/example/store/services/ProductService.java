package com.example.store.services;

import com.example.store.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

/**
 * @author auserox (Opanasiuk B.)
 */
@Service
public class ProductService {

    public List<Product> getAllProducts() {

        List<Product> listOfProducts = new ArrayList<>();

        listOfProducts.add(new Product("001", "Mac", "Just a powerful lap for a Spring coding", 54000 ));
        listOfProducts.add(new Product("002", "Acer", "Perfect combine of price and quality for a coding or popular games", 21000 ));
        listOfProducts.add(new Product("003", "LG", "Low price machine to do lap routine", 9000 ));

        return listOfProducts;
    }
    public Product getProductById(String id) {
        Predicate<Product> byId = p -> p.getId().equals(id);
        return filterProducts(byId);
    }

    public Product filterProducts(Predicate<Product> strategy) {
        return getAllProducts().stream().filter(strategy).findFirst().orElse(null);
    }

}
