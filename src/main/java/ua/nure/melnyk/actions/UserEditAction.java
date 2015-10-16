package ua.nure.melnyk.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import ua.nure.melnyk.entities.User;
import ua.nure.melnyk.services.UserService;

import static org.apache.commons.lang3.StringUtils.isEmpty;

@Component
@Scope(WebApplicationContext.SCOPE_REQUEST)
public class UserEditAction extends ActionSupport implements ModelDriven<User> {

    @Autowired
    private UserService userService;

    private User user = new User();

    @Override
    public User getModel() {
        return user;
    }

    @Override
    public String execute() throws Exception {
        if (user == null)
            return INPUT;
        userService.updateUser(user);
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (isEmpty(user.getLogin()) || user.getLogin().length() < 5)
            addFieldError("login", getText("login.short"));

        if (isEmpty(user.getPassword()) || user.getPassword().length() < 3)
            addFieldError("password", getText("password.sort"));

        if (isEmpty(user.getEmail()) || !user.getEmail().contains("@"))
            addFieldError("email", getText("email.invalid"));

        if (isEmpty(user.getName()))
            addFieldError("name", getText("name.empty"));
    }

}
