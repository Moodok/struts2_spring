package ua.nure.melnyk.services;

import ua.nure.melnyk.entities.User;

import java.util.List;

public interface UserService {

    User getUserByLogin(String login);

    User getUserById(long id);

    List<User> getUsers();

    void updateUser(User user);

    void addUser(User user);

    void deleteUserById(long userId);

}
