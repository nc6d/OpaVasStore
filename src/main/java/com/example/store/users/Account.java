package com.example.store.users;

import lombok.Data;
import lombok.NonNull;

import java.util.Date;

@Data
public class Account {
    @NonNull private long id;
    @NonNull private String name;
    @NonNull private int age;
    @NonNull private Date registrationDate;
    @NonNull private String email;

}