package ua.nure.melnyk.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import ua.nure.melnyk.entities.User;
import ua.nure.melnyk.services.UserService;

import java.util.List;

@Component
@Scope(WebApplicationContext.SCOPE_REQUEST)
public class HomeAction extends ActionSupport {

    @Autowired
    private UserService userService;

    List<User> users;

    public List<User> getUsers() {
        return users;
    }

    @Override
    public String execute() throws Exception {
        users = userService.getUsers();
        return SUCCESS;
    }

}
