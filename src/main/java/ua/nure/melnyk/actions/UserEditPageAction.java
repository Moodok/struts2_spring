package ua.nure.melnyk.actions;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.commons.lang3.math.NumberUtils;
import org.apache.struts2.interceptor.ParameterAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Component;
import ua.nure.melnyk.entities.User;
import ua.nure.melnyk.services.UserService;

import java.util.Map;

import static org.apache.commons.lang3.StringUtils.isEmpty;
import static org.apache.commons.lang3.math.NumberUtils.isDigits;

@Component
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
        clearActionErrors();
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
