package com.example.store.users;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
public class Account {
    private final long id;
    private String name;
    private int age;
    private Date registrationDate;
    private String email;
    private boolean isAdmin;

}
