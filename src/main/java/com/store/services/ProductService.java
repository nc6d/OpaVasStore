package com.store.services;

import com.store.entities.Product;
import com.store.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author auserox (Opanasiuk B.)
 */
@Service
public class ProductService {

    private final ProductRepository repository;

    public ProductService(ProductRepository repository) {
        this.repository = repository;
    }

    public void saveProduct(Product product){
        repository.save(product);
    }

    public void deleteProduct(Product product){
        repository.delete(product);
    }

    public List<Product> showAllProducts() {
        return new ArrayList<>(repository.findAll());
    }

}
