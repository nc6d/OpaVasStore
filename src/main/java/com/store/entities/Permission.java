package com.store.entities;

/**
 * @author auserox (Opanasiuk B.)
 */
public enum Permission {
    READ("users:read"),
    WRITE("users:write"),
    MODERATE("users:moderate");

    private final String permission;

    Permission(String permission) {
        this.permission = permission;
    }

    public String getPermission() {
        return permission;
    }
}
