package ua.nure.melnyk.actions;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

@Component
@Scope(WebApplicationContext.SCOPE_REQUEST)
public class UserAddAction extends UserEditAction {

    public UserAddAction() {
        postFormUrl = "userAddAction";
    }

    @Override
    public String execute() throws Exception {
        if (user == null)
            return INPUT;
        userService.addUser(user);
        return SUCCESS;
    }

}
