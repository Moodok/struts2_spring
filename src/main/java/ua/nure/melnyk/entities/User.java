package ua.nure.melnyk.entities;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

public class User {

    private static final AtomicLong ATOMIC_LONG = new AtomicLong();

    private long id;
    private String login;
    private String password;
    private String email;
    private String name;
    private List<String> roles;

    public User() {
    }

    public User(String login, String password, String email, String name, List<String> roles) {
        this.login = login;
        this.password = password;
        this.email = email;
        this.name = name;
        this.roles = roles;
        this.id = ATOMIC_LONG.getAndIncrement();
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getRoles() {
        return roles;
    }

    public void setRoles(List<String> roles) {
        this.roles = roles;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "email='" + email + '\'' +
                ", id=" + id +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", roles=" + roles +
                '}';
    }
}
