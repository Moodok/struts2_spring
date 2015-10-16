package ua.nure.melnyk.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import ua.nure.melnyk.entities.User;
import ua.nure.melnyk.services.UserService;

@Component
@Scope(WebApplicationContext.SCOPE_REQUEST)
public class UserEditPageAction extends ActionSupport implements ModelDriven<User> {

    @Autowired
    private UserService userService;

    private User user = new User();

    private String userId;

    @Override
    public User getModel() {
        return user;
    }

    @Override
    public String execute() throws Exception {
        long userId = Long.parseLong(getUserId());
        user = userService.getUserById(userId);
        if (user == null)
            return INPUT;
        return SUCCESS;
    }

    @Override
    public void validate() {
        try {
            Long.parseLong(getUserId());
        } catch (NumberFormatException ex) {
            addActionError("id.invalid");
        }
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

}
