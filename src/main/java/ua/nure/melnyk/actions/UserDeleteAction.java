package ua.nure.melnyk.actions;

import com.opensymphony.xwork2.ActionSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import ua.nure.melnyk.entities.User;
import ua.nure.melnyk.services.UserService;

@Component
@Scope(WebApplicationContext.SCOPE_REQUEST)
public class UserDeleteAction extends ActionSupport {

    @Autowired
    private UserService userService;

    private String userId;

    @Override
    public String execute() throws Exception {
        long userId = Long.parseLong(getUserId());
        userService.deleteUserById(userId);
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
