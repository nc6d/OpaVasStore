package com.example.store.users;

import lombok.Data;

import java.util.Date;

@Data
public class Account {
    private long id;
    private String name;
    private int age;
    private Date registrationDate;
    private String email;

    public Account(long id, String name, int age, Date registrationDate, String email){
        this.id = id;
        this.name = name;
        this.age = age;
        this.registrationDate = registrationDate;
        this.email = email;
    }
}