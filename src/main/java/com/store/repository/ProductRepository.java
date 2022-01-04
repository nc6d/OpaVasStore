package com.store.repository;

import com.store.entities.Product;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

/**
 * @author auserox (Opanasiuk B.)
 */
@Repository
public interface ProductRepository extends MongoRepository<Product, String> {
    public Optional<Product> findById(String id);
    public List<Product> findByName(String name);
    
}
