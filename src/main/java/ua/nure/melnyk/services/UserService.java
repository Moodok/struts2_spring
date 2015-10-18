package ua.nure.melnyk.services;

import org.springframework.stereotype.Component;
import ua.nure.melnyk.entities.User;

import java.util.List;

@Component
public interface UserService {

    User getUserByLogin(String login);

    User getUserById(long id);

    List<User> getUsers();

    void updateUser(User user);

    void addUser(User user);

    void deleteUserById(long userId);

}
