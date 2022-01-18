package com.store.repository;

import com.store.entities.Product;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

/**
 * @author auserox (Opanasiuk B.)
 */
@Repository
public interface ProductRepository extends MongoRepository<Product, ObjectId> {
    Optional<Product> findById(String id);
}