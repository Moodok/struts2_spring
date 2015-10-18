package ua.nure.melnyk.daos;

import ua.nure.melnyk.entities.User;

import java.util.List;

public interface UserDao {

    List<User> getUsers();

    User getUserByLogin(String login);

    User getUserById(long id);

    void updateUser(User user);

    void addUser(User user);

    void deleteUserById(long userId);

}
