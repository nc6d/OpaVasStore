package com.store.entities;

import org.springframework.security.core.authority.SimpleGrantedAuthority;

import java.util.Set;
import java.util.stream.Collectors;

/**
 * @author auserox (Opanasiuk B.)
 */

public enum Role {
    ADMIN(Set.of(Permission.READ, Permission.WRITE, Permission.MODERATE)),
    USER(Set.of(Permission.READ));


    private final Set<Permission> permissions;

    Role(Set<Permission> permissions) {
        this.permissions = permissions;
    }

    public Set<Permission> getPermissions() {
        return permissions;
    }

    public Set<SimpleGrantedAuthority> getAuthorities() {
        return getPermissions().stream()
                .map(permission -> new SimpleGrantedAuthority(permission.getPermission()))
                .collect(Collectors.toSet());
    }
}
