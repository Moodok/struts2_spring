package ua.nure.melnyk.entities;

import java.util.List;

public class User {

    private String login;
    private String password;
    private String name;
    private List<String> roles;

    public User(String login, String password, String name, List<String> roles) {
        this.login = login;
        this.password = password;
        this.name = name;
        this.roles = roles;
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
}
