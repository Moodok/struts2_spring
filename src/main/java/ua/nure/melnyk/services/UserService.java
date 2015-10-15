package ua.nure.melnyk.services;

import org.springframework.stereotype.Component;
import ua.nure.melnyk.entities.User;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;

@Component
public class UserService {

    private List<User> users = new ArrayList<>();

    public UserService() {
        users.add(new User("user", "user", "user@email", "USERNAME", Arrays.asList("ROLE_USER")));
        users.add(new User("admin", "admin", "admin@email", "ADMINNAME", Arrays.asList("ROLE_USER", "ROLE_ADMIN")));
    }

    public User getUserByLogin(String login) {
        return users.stream()
                .filter(user -> user.getLogin().equals(login))
                .findFirst().orElseGet(() -> null);
    }

    public List<User> getUsers() {
        return users;
    }

}
