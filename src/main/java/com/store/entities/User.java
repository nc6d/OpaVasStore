package com.store.entities;

/**
 * @author auserox (Opanasiuk B.)
 */

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.*;
import org.bson.types.ObjectId;
import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "users")
@Data
public class User {
    @Id
    @Setter(AccessLevel.NONE)
    private ObjectId id;

    @Column(name="username")
    @Size(max = 20)
    private String username;

    @NotBlank
    @Size(max = 50)
    @Email
    private String email;

    @Column(name="password")
    @NotBlank
    @Size(max = 120)
    private String password;

    @Enumerated(value = EnumType.STRING)
    @Column(name="role")
    private Role role;



    @Enumerated(value = EnumType.STRING)
    @Column(name = "status")
    private Status status;

    public User() {
    }



    public User(String username, String email, String password, Role role, Status status) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.role = role;
        this.status = status;
    }
}
