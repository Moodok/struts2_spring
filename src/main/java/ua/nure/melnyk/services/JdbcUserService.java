package ua.nure.melnyk.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ua.nure.melnyk.daos.UserDao;
import ua.nure.melnyk.entities.User;

import java.util.List;

@Component
public class JdbcUserService implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User getUserByLogin(String login) {
        return userDao.getUserByLogin(login);
    }

    @Override
    public User getUserById(long id) {
        return userDao.getUserById(id);
    }

    @Override
    public List<User> getUsers() {
        return userDao.getUsers();
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Override
    public void deleteUserById(long userId) {
        userDao.deleteUserById(userId);
    }
}
