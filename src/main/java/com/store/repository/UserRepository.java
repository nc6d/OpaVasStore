package com.store.repository;

import com.store.entities.User;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

/**
 * @author auserox (Opanasiuk B.)
 */
public interface UserRepository extends MongoRepository<User, ObjectId> {
    Optional<User> findByEmail(String email);
    Optional<User> findByUsername(String username);
}
